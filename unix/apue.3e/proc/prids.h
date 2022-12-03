#ifndef _PRINTF_IDS_H_
#define _PRINTF_IDS_H_

#include <stdio.h>
#include <string.h>
#include <unistd.h>

void prids() {
    char str[128];

    uid_t ruid, euid, suid;
    gid_t rgid, egid, sgid;
    getresuid(&ruid, &euid, &suid);
    getresgid(&rgid, &egid, &sgid);
    sprintf(str, "progress pid: %d, ppid: %d, uid: %d, gid: %d, euid: %d, egid: %d, saveUid: %d, saveGid: %d\n", getpid(), getppid(), ruid, rgid, euid, egid, suid, sgid);

    write(STDOUT_FILENO, str, strlen(str));
}

#endif  // _PRINTF_IDS_H_
