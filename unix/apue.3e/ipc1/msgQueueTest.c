#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/msg.h>
#include <unistd.h>
#include <wait.h>

static key_t msgKey;

struct mymsg {
    long type;
    char data[512];
};

int main() {
    int qID;
    pid_t pid;
    struct msqid_ds qInfo;
    struct mymsg sendMsg, recvMsg;

    if ((msgKey = ftok("./msgKey", 1)) < 0) {
        printf("ftok error\n");
        exit(1);
    }

    if (msgget(msgKey, 0666) < 0) {
        printf("msgget error: %s\n", strerror(errno));
        exit(1);
    }

    if (msgctl(qID, IPC_STAT, &qInfo) < 0) {
        printf("msgctl error\n");
        exit(1);
    }

    if ((pid = fork()) < 0) {
        printf("fork error\n");
        exit(1);
    } else if (pid > 0) {
        const char *sendStr = "Hello message queue";
        sendMsg.type = 1;
        memcpy(sendMsg.data, sendStr, strlen(sendStr));

        if (msgsnd(qID, &sendMsg, sizeof(sendMsg), 0) < 0) {
            printf("msgsnd error: %s\n", strerror(errno));
            exit(1);
        }

        while (waitpid(pid, NULL, 0) < 0) {
            if (errno == EINTR) {
                printf("waitpid error\n");
                exit(0);
            }
        }
        exit(0);
    } else {
        if (msgrcv(qID, &recvMsg, sizeof(recvMsg), 1, 0) < 0) {
            printf("msgrcv error: %s\n", strerror(errno));
            exit(1);
        }
        printf("recv msg. tpye: %ld, data: %s\n", recvMsg.type, recvMsg.data);
        exit(0);
    }

    msgctl(qID, IPC_RMID, &qInfo);

    exit(0);
}