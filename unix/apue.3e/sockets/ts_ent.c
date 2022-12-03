#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <netdb.h>
#include <arpa/inet.h>

void printfHostEnt(struct hostent *ent) {
    printf("h_name: %s\n", ent->h_name);
    for (int i = 0; ent->h_aliases[i] != NULL; ++i) {
        printf("h_alinases[%d]: %s\n", i, ent->h_aliases[i]);
    }
    printf("h_addrtype: %d\n", ent->h_addrtype);
    printf("h_length: %d\n", ent->h_length);
    for (int i = 0; ent->h_addr_list[i] != NULL; ++i) {
        printf("h_addr_list[%d]: %s\n", i, ent->h_addr_list[i]);
        char str[INET_ADDRSTRLEN];
        inet_ntop(AF_INET, ent->h_addr_list[i], str, INET_ADDRSTRLEN);
        printf("h_addr_list[%d]: %s\n", i, str);
    }
}

void testHostEnt() {
    struct hostent *ent;

    sethostent(1);
    while ((ent = gethostent()) != NULL) {
        printfHostEnt(ent);
        printf("\n");
    }
    endhostent();
}

void printfNetEnt(struct netent *ent) {
    printf("n_name: %s\n", ent->n_name);
    for (int i = 0; ent->n_aliases[i] != NULL; ++i) {
        printf("n_alinases[%d]: %s\n", i, ent->n_aliases[i]);
    }
    printf("n_addrtype: %d\n", ent->n_addrtype);
    printf("n_net: %d\n", ent->n_net);
    uint32_t local = ntohl(ent->n_net);
    printf("n_net(convert): %d\n", local);
}

void testNetEnt() {
    struct netent *ent;

    setnetent(1);
    while ((ent = getnetent()) != NULL) {
        printfNetEnt(ent);
        printf("\n");
    }
}

void printfProtoEnt(struct protoent *ent) {
    printf("p_name: %s\n", ent->p_name);
    for (int i = 0; ent->p_aliases[i] != NULL; ++i) {
        printf("p_alinases[%d]: %s\n", i, ent->p_aliases[i]);
    }
    printf("p_proto: %d\n", ent->p_proto);
}

void testProtoEnt() {
    struct protoent *ent;

    setprotoent(1);
    while ((ent = getprotoent()) != NULL) {
        printfProtoEnt(ent);
        printf("\n");
    }
	endprotoent();
}

void printfServEnt(struct servent *ent) {
    printf("s_name: %s\n", ent->s_name);
    for (int i = 0; ent->s_aliases[i] != NULL; ++i) {
        printf("s_alinases[%d]: %s\n", i, ent->s_aliases[i]);
    }
    printf("s_port: %d\n", ent->s_port);
    printf("s_proto: %s\n", ent->s_proto);
}

void testServent() {
    struct servent *ent;

    setservent(1);
    while ((ent = getservent()) != NULL) {
        printfServEnt(ent);
        printf("\n");
    }
    endservent();
}

void printfAddrInfo(struct addrinfo *info) {}

void testGetAddrInfo() {
    int err;
    int sockfd;
    struct addrinfo *ailist, *aip;
    struct addrinfo hint;
    memset(&hint, 0, sizeof(hint));
    hint.ai_flags = AI_CANONNAME;
    hint.ai_socktype = SOCK_STREAM;
    hint.ai_canonname = NULL;
    hint.ai_addr = NULL;
    hint.ai_next = NULL;

    if ((err = getaddrinfo("debian", "12345", &hint, &ailist)) != 0) {
        printf("ruptimed: getaddrinfo error: %s\n", gai_strerror(err));
        exit(1);
    } else {
        for (aip = ailist; aip != NULL; aip = aip->ai_next) {
            printf("canonname: %s\n", aip->ai_canonname);
            printf("socktype: %d\n", aip->ai_socktype);
        }
        exit(1);
    }
}

int main(int argc, char *argv[]) {
    // testHostEnt();
    // testNetEnt();
    // testProtoEnt();
    // testServent();
    testGetAddrInfo();
    exit(0);
}