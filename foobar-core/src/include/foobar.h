#ifndef _FOOBAR_H_
#define _FOOBAR_H_

#ifdef __cplusplus
extern "C" {
#endif

/**
 * @brief Callbacks data structure. 
 */
typedef struct {
    void (*on_foo_created)(void**);
    void (*on_foo_destroyed)(void**);
} foobar_callbacks;

/**
 * @brief Compilation unit code.
 */
extern void init_foo();

/**
 * @brief Compilation unit code.
 */
extern void do_foo();

/**
 * @brief Compilation unit code.
 */
extern void destroy_foo();

#ifdef __cplusplus
}
#endif

#endif //_FOOBAR_H_
