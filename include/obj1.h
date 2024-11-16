#ifndef OBJ1_H
#define OBJ1_H

struct obj1;

typedef struct {
    /* 0x00 */ void* func0;
    /* 0x04 */ void* func1;
    /* 0x08 */ void* func2;
    /* 0x0C */ void* func3;
    /* 0x10 */ int (*func4)(struct obj1*, int);
    /* 0x14 */ void (*func5)(struct obj1*);
    /* 0x18 */ void (*func6)(struct obj1*);
} obj1_vtable; // size = 0x1C

typedef struct obj1 {
    /* 0x00 */ const obj1_vtable* vtable;
} obj1; // size = ??

#endif
