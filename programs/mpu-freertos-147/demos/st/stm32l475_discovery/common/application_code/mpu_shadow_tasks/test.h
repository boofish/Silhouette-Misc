/*
 * test.h
 *
 *  Created on: Apr 7, 2019
 *      Author: Lele Ma
 */

#ifndef APPLICATION_CODE_MPU_SHADOW_TASKS_TEST_H_
#define APPLICATION_CODE_MPU_SHADOW_TASKS_TEST_H_

void printRegs(void);

int testReadAddress (void * addr);
int testWriteAddress (void * addr);

#endif /* APPLICATION_CODE_MPU_SHADOW_TASKS_TEST_H_ */
