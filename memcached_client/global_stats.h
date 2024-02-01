// global_stats.h
#ifndef GLOBAL_STATS_H
#define GLOBAL_STATS_H

#include <pthread.h>
#include <sys/time.h>

extern pthread_mutex_t stats_lock;

extern double global_99th_latency;
extern double global_99th_latency_previous;
extern int meanInterarrival;
extern int IncreadedMeanInterarrival;
extern int decreasedMeanInterarrival;
extern int meanInterarrivalSET;
extern int n_requests;

#endif // GLOBAL_STATS_H
