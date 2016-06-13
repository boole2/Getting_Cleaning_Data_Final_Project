#Code Book

#Original Processed variables

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.  

The set of variables that were estimated from these signals are:

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values.
iqr(): Interquartile range
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal
kurtosis(): kurtosis of the frequency domain signal
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean



## Transformed   variables in the derived tidy file

the tidy file contains the average value for each pre mentioned   measures.
variable Names where transformed in compliance with data.frame column name removing ()
and others special symbols and duplicated name where indexed by  Windows progressive number (1-3).
To augment readiness of variable,  some character where be expandeded:
t -> time
f -> frequency
gyro -> gyroscope
Acc -> accelerometer
Mag -> magnitude   


## ID Row
Every row in the file has an identifier that correspond to a Specifically activity carry on by a Subject:

1 subject
2 activity
- Activity: Its activity label.
- Subject: An identifier of the subject who carried out the experiment.


## List of the variables
For each unique combination of Activity-subject (180 rows) the file contains the
average values of each original measures.
The full list of variable are reported   

3 timeBodyAccelerometer.mean...X
4 timeBodyAccelerometer.mean...Y
5 timeBodyAccelerometer.mean...Z
6 timeBodyAccelerometer.std...X
7 timeBodyAccelerometer.std...Y
8 timeBodyAccelerometer.std...Z
9 timeBodyAccelerometer.mad...X
10 timeBodyAccelerometer.mad...Y
11 timeBodyAccelerometer.mad...Z
12 timeBodyAccelerometer.max...X
13 timeBodyAccelerometer.max...Y
14 timeBodyAccelerometer.max...Z
15 timeBodyAccelerometer.min...X
16 timeBodyAccelerometer.min...Y
17 timeBodyAccelerometer.min...Z
18 timeBodyAccelerometer.sma..
19 timeBodyAccelerometer.energy...X
20 timeBodyAccelerometer.energy...Y
21 timeBodyAccelerometer.energy...Z
22 timeBodyAccelerometer.iqr...X
23 timeBodyAccelerometer.iqr...Y
24 timeBodyAccelerometer.iqr...Z
25 timeBodyAccelerometer.entropy...X
26 timeBodyAccelerometer.entropy...Y
27 timeBodyAccelerometer.entropy...Z
28 timeBodyAccelerometer.arCoeff...X.1
29 timeBodyAccelerometer.arCoeff...X.2
30 timeBodyAccelerometer.arCoeff...X.3
31 timeBodyAccelerometer.arCoeff...X.4
32 timeBodyAccelerometer.arCoeff...Y.1
33 timeBodyAccelerometer.arCoeff...Y.2
34 timeBodyAccelerometer.arCoeff...Y.3
35 timeBodyAccelerometer.arCoeff...Y.4
36 timeBodyAccelerometer.arCoeff...Z.1
37 timeBodyAccelerometer.arCoeff...Z.2
38 timeBodyAccelerometer.arCoeff...Z.3
39 timeBodyAccelerometer.arCoeff...Z.4
40 timeBodyAccelerometer.correlation...X.Y
41 timeBodyAccelerometer.correlation...X.Z
42 timeBodyAccelerometer.correlation...Y.Z
43 timeGravityAccelerometer.mean...X
44 timeGravityAccelerometer.mean...Y
45 timeGravityAccelerometer.mean...Z
46 timeGravityAccelerometer.std...X
47 timeGravityAccelerometer.std...Y
48 timeGravityAccelerometer.std...Z
49 timeGravityAccelerometer.mad...X
50 timeGravityAccelerometer.mad...Y
51 timeGravityAccelerometer.mad...Z
52 timeGravityAccelerometer.max...X
53 timeGravityAccelerometer.max...Y
54 timeGravityAccelerometer.max...Z
55 timeGravityAccelerometer.min...X
56 timeGravityAccelerometer.min...Y
57 timeGravityAccelerometer.min...Z
58 timeGravityAccelerometer.sma..
59 timeGravityAccelerometer.energy...X
60 timeGravityAccelerometer.energy...Y
61 timeGravityAccelerometer.energy...Z
62 timeGravityAccelerometer.iqr...X
63 timeGravityAccelerometer.iqr...Y
64 timeGravityAccelerometer.iqr...Z
65 timeGravityAccelerometer.entropy...X
66 timeGravityAccelerometer.entropy...Y
67 timeGravityAccelerometer.entropy...Z
68 timeGravityAccelerometer.arCoeff...X.1
69 timeGravityAccelerometer.arCoeff...X.2
70 timeGravityAccelerometer.arCoeff...X.3
71 timeGravityAccelerometer.arCoeff...X.4
72 timeGravityAccelerometer.arCoeff...Y.1
73 timeGravityAccelerometer.arCoeff...Y.2
74 timeGravityAccelerometer.arCoeff...Y.3
75 timeGravityAccelerometer.arCoeff...Y.4
76 timeGravityAccelerometer.arCoeff...Z.1
77 timeGravityAccelerometer.arCoeff...Z.2
78 timeGravityAccelerometer.arCoeff...Z.3
79 timeGravityAccelerometer.arCoeff...Z.4
80 timeGravityAccelerometer.correlation...X.Y
81 timeGravityAccelerometer.correlation...X.Z
82 timeGravityAccelerometer.correlation...Y.Z
83 timeBodyAccelerometerJerk.mean...X
84 timeBodyAccelerometerJerk.mean...Y
85 timeBodyAccelerometerJerk.mean...Z
86 timeBodyAccelerometerJerk.std...X
87 timeBodyAccelerometerJerk.std...Y
88 timeBodyAccelerometerJerk.std...Z
89 timeBodyAccelerometerJerk.mad...X
90 timeBodyAccelerometerJerk.mad...Y
91 timeBodyAccelerometerJerk.mad...Z
92 timeBodyAccelerometerJerk.max...X
93 timeBodyAccelerometerJerk.max...Y
94 timeBodyAccelerometerJerk.max...Z
95 timeBodyAccelerometerJerk.min...X
96 timeBodyAccelerometerJerk.min...Y
97 timeBodyAccelerometerJerk.min...Z
98 timeBodyAccelerometerJerk.sma..
99 timeBodyAccelerometerJerk.energy...X
100 timeBodyAccelerometerJerk.energy...Y
101 timeBodyAccelerometerJerk.energy...Z
102 timeBodyAccelerometerJerk.iqr...X
103 timeBodyAccelerometerJerk.iqr...Y
104 timeBodyAccelerometerJerk.iqr...Z
105 timeBodyAccelerometerJerk.entropy...X
106 timeBodyAccelerometerJerk.entropy...Y
107 timeBodyAccelerometerJerk.entropy...Z
108 timeBodyAccelerometerJerk.arCoeff...X.1
109 timeBodyAccelerometerJerk.arCoeff...X.2
110 timeBodyAccelerometerJerk.arCoeff...X.3
111 timeBodyAccelerometerJerk.arCoeff...X.4
112 timeBodyAccelerometerJerk.arCoeff...Y.1
113 timeBodyAccelerometerJerk.arCoeff...Y.2
114 timeBodyAccelerometerJerk.arCoeff...Y.3
115 timeBodyAccelerometerJerk.arCoeff...Y.4
116 timeBodyAccelerometerJerk.arCoeff...Z.1
117 timeBodyAccelerometerJerk.arCoeff...Z.2
118 timeBodyAccelerometerJerk.arCoeff...Z.3
119 timeBodyAccelerometerJerk.arCoeff...Z.4
120 timeBodyAccelerometerJerk.correlation...X.Y
121 timeBodyAccelerometerJerk.correlation...X.Z
122 timeBodyAccelerometerJerk.correlation...Y.Z
123 timeBodyGyroscope.mean...X
124 timeBodyGyroscope.mean...Y
125 timeBodyGyroscope.mean...Z
126 timeBodyGyroscope.std...X
127 timeBodyGyroscope.std...Y
128 timeBodyGyroscope.std...Z
129 timeBodyGyroscope.mad...X
130 timeBodyGyroscope.mad...Y
131 timeBodyGyroscope.mad...Z
132 timeBodyGyroscope.max...X
133 timeBodyGyroscope.max...Y
134 timeBodyGyroscope.max...Z
135 timeBodyGyroscope.min...X
136 timeBodyGyroscope.min...Y
137 timeBodyGyroscope.min...Z
138 timeBodyGyroscope.sma..
139 timeBodyGyroscope.energy...X
140 timeBodyGyroscope.energy...Y
141 timeBodyGyroscope.energy...Z
142 timeBodyGyroscope.iqr...X
143 timeBodyGyroscope.iqr...Y
144 timeBodyGyroscope.iqr...Z
145 timeBodyGyroscope.entropy...X
146 timeBodyGyroscope.entropy...Y
147 timeBodyGyroscope.entropy...Z
148 timeBodyGyroscope.arCoeff...X.1
149 timeBodyGyroscope.arCoeff...X.2
150 timeBodyGyroscope.arCoeff...X.3
151 timeBodyGyroscope.arCoeff...X.4
152 timeBodyGyroscope.arCoeff...Y.1
153 timeBodyGyroscope.arCoeff...Y.2
154 timeBodyGyroscope.arCoeff...Y.3
155 timeBodyGyroscope.arCoeff...Y.4
156 timeBodyGyroscope.arCoeff...Z.1
157 timeBodyGyroscope.arCoeff...Z.2
158 timeBodyGyroscope.arCoeff...Z.3
159 timeBodyGyroscope.arCoeff...Z.4
160 timeBodyGyroscope.correlation...X.Y
161 timeBodyGyroscope.correlation...X.Z
162 timeBodyGyroscope.correlation...Y.Z
163 timeBodyGyroscopeJerk.mean...X
164 timeBodyGyroscopeJerk.mean...Y
165 timeBodyGyroscopeJerk.mean...Z
166 timeBodyGyroscopeJerk.std...X
167 timeBodyGyroscopeJerk.std...Y
168 timeBodyGyroscopeJerk.std...Z
169 timeBodyGyroscopeJerk.mad...X
170 timeBodyGyroscopeJerk.mad...Y
171 timeBodyGyroscopeJerk.mad...Z
172 timeBodyGyroscopeJerk.max...X
173 timeBodyGyroscopeJerk.max...Y
174 timeBodyGyroscopeJerk.max...Z
175 timeBodyGyroscopeJerk.min...X
176 timeBodyGyroscopeJerk.min...Y
177 timeBodyGyroscopeJerk.min...Z
178 timeBodyGyroscopeJerk.sma..
179 timeBodyGyroscopeJerk.energy...X
180 timeBodyGyroscopeJerk.energy...Y
181 timeBodyGyroscopeJerk.energy...Z
182 timeBodyGyroscopeJerk.iqr...X
183 timeBodyGyroscopeJerk.iqr...Y
184 timeBodyGyroscopeJerk.iqr...Z
185 timeBodyGyroscopeJerk.entropy...X
186 timeBodyGyroscopeJerk.entropy...Y
187 timeBodyGyroscopeJerk.entropy...Z
188 timeBodyGyroscopeJerk.arCoeff...X.1
189 timeBodyGyroscopeJerk.arCoeff...X.2
190 timeBodyGyroscopeJerk.arCoeff...X.3
191 timeBodyGyroscopeJerk.arCoeff...X.4
192 timeBodyGyroscopeJerk.arCoeff...Y.1
193 timeBodyGyroscopeJerk.arCoeff...Y.2
194 timeBodyGyroscopeJerk.arCoeff...Y.3
195 timeBodyGyroscopeJerk.arCoeff...Y.4
196 timeBodyGyroscopeJerk.arCoeff...Z.1
197 timeBodyGyroscopeJerk.arCoeff...Z.2
198 timeBodyGyroscopeJerk.arCoeff...Z.3
199 timeBodyGyroscopeJerk.arCoeff...Z.4
200 timeBodyGyroscopeJerk.correlation...X.Y
201 timeBodyGyroscopeJerk.correlation...X.Z
202 timeBodyGyroscopeJerk.correlation...Y.Z
203 timeBodyAccelerometerMagnitude.mean..
204 timeBodyAccelerometerMagnitude.std..
205 timeBodyAccelerometerMagnitude.mad..
206 timeBodyAccelerometerMagnitude.max..
207 timeBodyAccelerometerMagnitude.min..
208 timeBodyAccelerometerMagnitude.sma..
209 timeBodyAccelerometerMagnitude.energy..
210 timeBodyAccelerometerMagnitude.iqr..
211 timeBodyAccelerometerMagnitude.entropy..
212 timeBodyAccelerometerMagnitude.arCoeff..1
213 timeBodyAccelerometerMagnitude.arCoeff..2
214 timeBodyAccelerometerMagnitude.arCoeff..3
215 timeBodyAccelerometerMagnitude.arCoeff..4
216 timeGravityAccelerometerMagnitude.mean..
217 timeGravityAccelerometerMagnitude.std..
218 timeGravityAccelerometerMagnitude.mad..
219 timeGravityAccelerometerMagnitude.max..
220 timeGravityAccelerometerMagnitude.min..
221 timeGravityAccelerometerMagnitude.sma..
222 timeGravityAccelerometerMagnitude.energy..
223 timeGravityAccelerometerMagnitude.iqr..
224 timeGravityAccelerometerMagnitude.entropy..
225 timeGravityAccelerometerMagnitude.arCoeff..1
226 timeGravityAccelerometerMagnitude.arCoeff..2
227 timeGravityAccelerometerMagnitude.arCoeff..3
228 timeGravityAccelerometerMagnitude.arCoeff..4
229 timeBodyAccelerometerJerkMagnitude.mean..
230 timeBodyAccelerometerJerkMagnitude.std..
231 timeBodyAccelerometerJerkMagnitude.mad..
232 timeBodyAccelerometerJerkMagnitude.max..
233 timeBodyAccelerometerJerkMagnitude.min..
234 timeBodyAccelerometerJerkMagnitude.sma..
235 timeBodyAccelerometerJerkMagnitude.energy..
236 timeBodyAccelerometerJerkMagnitude.iqr..
237 timeBodyAccelerometerJerkMagnitude.entropy..
238 timeBodyAccelerometerJerkMagnitude.arCoeff..1
239 timeBodyAccelerometerJerkMagnitude.arCoeff..2
240 timeBodyAccelerometerJerkMagnitude.arCoeff..3
241 timeBodyAccelerometerJerkMagnitude.arCoeff..4
242 timeBodyGyroscopeMagnitude.mean..
243 timeBodyGyroscopeMagnitude.std..
244 timeBodyGyroscopeMagnitude.mad..
245 timeBodyGyroscopeMagnitude.max..
246 timeBodyGyroscopeMagnitude.min..
247 timeBodyGyroscopeMagnitude.sma..
248 timeBodyGyroscopeMagnitude.energy..
249 timeBodyGyroscopeMagnitude.iqr..
250 timeBodyGyroscopeMagnitude.entropy..
251 timeBodyGyroscopeMagnitude.arCoeff..1
252 timeBodyGyroscopeMagnitude.arCoeff..2
253 timeBodyGyroscopeMagnitude.arCoeff..3
254 timeBodyGyroscopeMagnitude.arCoeff..4
255 timeBodyGyroscopeJerkMagnitude.mean..
256 timeBodyGyroscopeJerkMagnitude.std..
257 timeBodyGyroscopeJerkMagnitude.mad..
258 timeBodyGyroscopeJerkMagnitude.max..
259 timeBodyGyroscopeJerkMagnitude.min..
260 timeBodyGyroscopeJerkMagnitude.sma..
261 timeBodyGyroscopeJerkMagnitude.energy..
262 timeBodyGyroscopeJerkMagnitude.iqr..
263 timeBodyGyroscopeJerkMagnitude.entropy..
264 timeBodyGyroscopeJerkMagnitude.arCoeff..1
265 timeBodyGyroscopeJerkMagnitude.arCoeff..2
266 timeBodyGyroscopeJerkMagnitude.arCoeff..3
267 timeBodyGyroscopeJerkMagnitude.arCoeff..4
268 frequencyBodyAccelerometer.mean...X
269 frequencyBodyAccelerometer.mean...Y
270 frequencyBodyAccelerometer.mean...Z
271 frequencyBodyAccelerometer.std...X
272 frequencyBodyAccelerometer.std...Y
273 frequencyBodyAccelerometer.std...Z
274 frequencyBodyAccelerometer.mad...X
275 frequencyBodyAccelerometer.mad...Y
276 frequencyBodyAccelerometer.mad...Z
277 frequencyBodyAccelerometer.max...X
278 frequencyBodyAccelerometer.max...Y
279 frequencyBodyAccelerometer.max...Z
280 frequencyBodyAccelerometer.min...X
281 frequencyBodyAccelerometer.min...Y
282 frequencyBodyAccelerometer.min...Z
283 frequencyBodyAccelerometer.sma..
284 frequencyBodyAccelerometer.energy...X
285 frequencyBodyAccelerometer.energy...Y
286 frequencyBodyAccelerometer.energy...Z
287 frequencyBodyAccelerometer.iqr...X
288 frequencyBodyAccelerometer.iqr...Y
289 frequencyBodyAccelerometer.iqr...Z
290 frequencyBodyAccelerometer.entropy...X
291 frequencyBodyAccelerometer.entropy...Y
292 frequencyBodyAccelerometer.entropy...Z
293 frequencyBodyAccelerometer.maxInds.X
294 frequencyBodyAccelerometer.maxInds.Y
295 frequencyBodyAccelerometer.maxInds.Z
296 frequencyBodyAccelerometer.meanFreq...X
297 frequencyBodyAccelerometer.meanFreq...Y
298 frequencyBodyAccelerometer.meanFreq...Z
299 frequencyBodyAccelerometer.skewness...X
300 frequencyBodyAccelerometer.kurtosis...X
301 frequencyBodyAccelerometer.skewness...Y
302 frequencyBodyAccelerometer.kurtosis...Y
303 frequencyBodyAccelerometer.skewness...Z
304 frequencyBodyAccelerometer.kurtosis...Z
305 frequencyBodyAccelerometer.bandsEnergy...1.8
306 frequencyBodyAccelerometer.bandsEnergy...9.16
307 frequencyBodyAccelerometer.bandsEnergy...17.24
308 frequencyBodyAccelerometer.bandsEnergy...25.32
309 frequencyBodyAccelerometer.bandsEnergy...33.40
310 frequencyBodyAccelerometer.bandsEnergy...41.48
311 frequencyBodyAccelerometer.bandsEnergy...49.56
312 frequencyBodyAccelerometer.bandsEnergy...57.64
313 frequencyBodyAccelerometer.bandsEnergy...1.16
314 frequencyBodyAccelerometer.bandsEnergy...17.32
315 frequencyBodyAccelerometer.bandsEnergy...33.48
316 frequencyBodyAccelerometer.bandsEnergy...49.64
317 frequencyBodyAccelerometer.bandsEnergy...1.24
318 frequencyBodyAccelerometer.bandsEnergy...25.48
319 frequencyBodyAccelerometer.bandsEnergy...1.8.1
320 frequencyBodyAccelerometer.bandsEnergy...9.16.1
321 frequencyBodyAccelerometer.bandsEnergy...17.24.1
322 frequencyBodyAccelerometer.bandsEnergy...25.32.1
323 frequencyBodyAccelerometer.bandsEnergy...33.40.1
324 frequencyBodyAccelerometer.bandsEnergy...41.48.1
325 frequencyBodyAccelerometer.bandsEnergy...49.56.1
326 frequencyBodyAccelerometer.bandsEnergy...57.64.1
327 frequencyBodyAccelerometer.bandsEnergy...1.16.1
328 frequencyBodyAccelerometer.bandsEnergy...17.32.1
329 frequencyBodyAccelerometer.bandsEnergy...33.48.1
330 frequencyBodyAccelerometer.bandsEnergy...49.64.1
331 frequencyBodyAccelerometer.bandsEnergy...1.24.1
332 frequencyBodyAccelerometer.bandsEnergy...25.48.1
333 frequencyBodyAccelerometer.bandsEnergy...1.8.2
334 frequencyBodyAccelerometer.bandsEnergy...9.16.2
335 frequencyBodyAccelerometer.bandsEnergy...17.24.2
336 frequencyBodyAccelerometer.bandsEnergy...25.32.2
337 frequencyBodyAccelerometer.bandsEnergy...33.40.2
338 frequencyBodyAccelerometer.bandsEnergy...41.48.2
339 frequencyBodyAccelerometer.bandsEnergy...49.56.2
340 frequencyBodyAccelerometer.bandsEnergy...57.64.2
341 frequencyBodyAccelerometer.bandsEnergy...1.16.2
342 frequencyBodyAccelerometer.bandsEnergy...17.32.2
343 frequencyBodyAccelerometer.bandsEnergy...33.48.2
344 frequencyBodyAccelerometer.bandsEnergy...49.64.2
345 frequencyBodyAccelerometer.bandsEnergy...1.24.2
346 frequencyBodyAccelerometer.bandsEnergy...25.48.2
347 frequencyBodyAccelerometerJerk.mean...X
348 frequencyBodyAccelerometerJerk.mean...Y
349 frequencyBodyAccelerometerJerk.mean...Z
350 frequencyBodyAccelerometerJerk.std...X
351 frequencyBodyAccelerometerJerk.std...Y
352 frequencyBodyAccelerometerJerk.std...Z
353 frequencyBodyAccelerometerJerk.mad...X
354 frequencyBodyAccelerometerJerk.mad...Y
355 frequencyBodyAccelerometerJerk.mad...Z
356 frequencyBodyAccelerometerJerk.max...X
357 frequencyBodyAccelerometerJerk.max...Y
358 frequencyBodyAccelerometerJerk.max...Z
359 frequencyBodyAccelerometerJerk.min...X
360 frequencyBodyAccelerometerJerk.min...Y
361 frequencyBodyAccelerometerJerk.min...Z
362 frequencyBodyAccelerometerJerk.sma..
363 frequencyBodyAccelerometerJerk.energy...X
364 frequencyBodyAccelerometerJerk.energy...Y
365 frequencyBodyAccelerometerJerk.energy...Z
366 frequencyBodyAccelerometerJerk.iqr...X
367 frequencyBodyAccelerometerJerk.iqr...Y
368 frequencyBodyAccelerometerJerk.iqr...Z
369 frequencyBodyAccelerometerJerk.entropy...X
370 frequencyBodyAccelerometerJerk.entropy...Y
371 frequencyBodyAccelerometerJerk.entropy...Z
372 frequencyBodyAccelerometerJerk.maxInds.X
373 frequencyBodyAccelerometerJerk.maxInds.Y
374 frequencyBodyAccelerometerJerk.maxInds.Z
375 frequencyBodyAccelerometerJerk.meanFreq...X
376 frequencyBodyAccelerometerJerk.meanFreq...Y
377 frequencyBodyAccelerometerJerk.meanFreq...Z
378 frequencyBodyAccelerometerJerk.skewness...X
379 frequencyBodyAccelerometerJerk.kurtosis...X
380 frequencyBodyAccelerometerJerk.skewness...Y
381 frequencyBodyAccelerometerJerk.kurtosis...Y
382 frequencyBodyAccelerometerJerk.skewness...Z
383 frequencyBodyAccelerometerJerk.kurtosis...Z
384 frequencyBodyAccelerometerJerk.bandsEnergy...1.8
385 frequencyBodyAccelerometerJerk.bandsEnergy...9.16
386 frequencyBodyAccelerometerJerk.bandsEnergy...17.24
387 frequencyBodyAccelerometerJerk.bandsEnergy...25.32
388 frequencyBodyAccelerometerJerk.bandsEnergy...33.40
389 frequencyBodyAccelerometerJerk.bandsEnergy...41.48
390 frequencyBodyAccelerometerJerk.bandsEnergy...49.56
391 frequencyBodyAccelerometerJerk.bandsEnergy...57.64
392 frequencyBodyAccelerometerJerk.bandsEnergy...1.16
393 frequencyBodyAccelerometerJerk.bandsEnergy...17.32
394 frequencyBodyAccelerometerJerk.bandsEnergy...33.48
395 frequencyBodyAccelerometerJerk.bandsEnergy...49.64
396 frequencyBodyAccelerometerJerk.bandsEnergy...1.24
397 frequencyBodyAccelerometerJerk.bandsEnergy...25.48
398 frequencyBodyAccelerometerJerk.bandsEnergy...1.8.1
399 frequencyBodyAccelerometerJerk.bandsEnergy...9.16.1
400 frequencyBodyAccelerometerJerk.bandsEnergy...17.24.1
401 frequencyBodyAccelerometerJerk.bandsEnergy...25.32.1
402 frequencyBodyAccelerometerJerk.bandsEnergy...33.40.1
403 frequencyBodyAccelerometerJerk.bandsEnergy...41.48.1
404 frequencyBodyAccelerometerJerk.bandsEnergy...49.56.1
405 frequencyBodyAccelerometerJerk.bandsEnergy...57.64.1
406 frequencyBodyAccelerometerJerk.bandsEnergy...1.16.1
407 frequencyBodyAccelerometerJerk.bandsEnergy...17.32.1
408 frequencyBodyAccelerometerJerk.bandsEnergy...33.48.1
409 frequencyBodyAccelerometerJerk.bandsEnergy...49.64.1
410 frequencyBodyAccelerometerJerk.bandsEnergy...1.24.1
411 frequencyBodyAccelerometerJerk.bandsEnergy...25.48.1
412 frequencyBodyAccelerometerJerk.bandsEnergy...1.8.2
413 frequencyBodyAccelerometerJerk.bandsEnergy...9.16.2
414 frequencyBodyAccelerometerJerk.bandsEnergy...17.24.2
415 frequencyBodyAccelerometerJerk.bandsEnergy...25.32.2
416 frequencyBodyAccelerometerJerk.bandsEnergy...33.40.2
417 frequencyBodyAccelerometerJerk.bandsEnergy...41.48.2
418 frequencyBodyAccelerometerJerk.bandsEnergy...49.56.2
419 frequencyBodyAccelerometerJerk.bandsEnergy...57.64.2
420 frequencyBodyAccelerometerJerk.bandsEnergy...1.16.2
421 frequencyBodyAccelerometerJerk.bandsEnergy...17.32.2
422 frequencyBodyAccelerometerJerk.bandsEnergy...33.48.2
423 frequencyBodyAccelerometerJerk.bandsEnergy...49.64.2
424 frequencyBodyAccelerometerJerk.bandsEnergy...1.24.2
425 frequencyBodyAccelerometerJerk.bandsEnergy...25.48.2
426 frequencyBodyGyroscope.mean...X
427 frequencyBodyGyroscope.mean...Y
428 frequencyBodyGyroscope.mean...Z
429 frequencyBodyGyroscope.std...X
430 frequencyBodyGyroscope.std...Y
431 frequencyBodyGyroscope.std...Z
432 frequencyBodyGyroscope.mad...X
433 frequencyBodyGyroscope.mad...Y
434 frequencyBodyGyroscope.mad...Z
435 frequencyBodyGyroscope.max...X
436 frequencyBodyGyroscope.max...Y
437 frequencyBodyGyroscope.max...Z
438 frequencyBodyGyroscope.min...X
439 frequencyBodyGyroscope.min...Y
440 frequencyBodyGyroscope.min...Z
441 frequencyBodyGyroscope.sma..
442 frequencyBodyGyroscope.energy...X
443 frequencyBodyGyroscope.energy...Y
444 frequencyBodyGyroscope.energy...Z
445 frequencyBodyGyroscope.iqr...X
446 frequencyBodyGyroscope.iqr...Y
447 frequencyBodyGyroscope.iqr...Z
448 frequencyBodyGyroscope.entropy...X
449 frequencyBodyGyroscope.entropy...Y
450 frequencyBodyGyroscope.entropy...Z
451 frequencyBodyGyroscope.maxInds.X
452 frequencyBodyGyroscope.maxInds.Y
453 frequencyBodyGyroscope.maxInds.Z
454 frequencyBodyGyroscope.meanFreq...X
455 frequencyBodyGyroscope.meanFreq...Y
456 frequencyBodyGyroscope.meanFreq...Z
457 frequencyBodyGyroscope.skewness...X
458 frequencyBodyGyroscope.kurtosis...X
459 frequencyBodyGyroscope.skewness...Y
460 frequencyBodyGyroscope.kurtosis...Y
461 frequencyBodyGyroscope.skewness...Z
462 frequencyBodyGyroscope.kurtosis...Z
463 frequencyBodyGyroscope.bandsEnergy...1.8
464 frequencyBodyGyroscope.bandsEnergy...9.16
465 frequencyBodyGyroscope.bandsEnergy...17.24
466 frequencyBodyGyroscope.bandsEnergy...25.32
467 frequencyBodyGyroscope.bandsEnergy...33.40
468 frequencyBodyGyroscope.bandsEnergy...41.48
469 frequencyBodyGyroscope.bandsEnergy...49.56
470 frequencyBodyGyroscope.bandsEnergy...57.64
471 frequencyBodyGyroscope.bandsEnergy...1.16
472 frequencyBodyGyroscope.bandsEnergy...17.32
473 frequencyBodyGyroscope.bandsEnergy...33.48
474 frequencyBodyGyroscope.bandsEnergy...49.64
475 frequencyBodyGyroscope.bandsEnergy...1.24
476 frequencyBodyGyroscope.bandsEnergy...25.48
477 frequencyBodyGyroscope.bandsEnergy...1.8.1
478 frequencyBodyGyroscope.bandsEnergy...9.16.1
479 frequencyBodyGyroscope.bandsEnergy...17.24.1
480 frequencyBodyGyroscope.bandsEnergy...25.32.1
481 frequencyBodyGyroscope.bandsEnergy...33.40.1
482 frequencyBodyGyroscope.bandsEnergy...41.48.1
483 frequencyBodyGyroscope.bandsEnergy...49.56.1
484 frequencyBodyGyroscope.bandsEnergy...57.64.1
485 frequencyBodyGyroscope.bandsEnergy...1.16.1
486 frequencyBodyGyroscope.bandsEnergy...17.32.1
487 frequencyBodyGyroscope.bandsEnergy...33.48.1
488 frequencyBodyGyroscope.bandsEnergy...49.64.1
489 frequencyBodyGyroscope.bandsEnergy...1.24.1
490 frequencyBodyGyroscope.bandsEnergy...25.48.1
491 frequencyBodyGyroscope.bandsEnergy...1.8.2
492 frequencyBodyGyroscope.bandsEnergy...9.16.2
493 frequencyBodyGyroscope.bandsEnergy...17.24.2
494 frequencyBodyGyroscope.bandsEnergy...25.32.2
495 frequencyBodyGyroscope.bandsEnergy...33.40.2
496 frequencyBodyGyroscope.bandsEnergy...41.48.2
497 frequencyBodyGyroscope.bandsEnergy...49.56.2
498 frequencyBodyGyroscope.bandsEnergy...57.64.2
499 frequencyBodyGyroscope.bandsEnergy...1.16.2
500 frequencyBodyGyroscope.bandsEnergy...17.32.2
501 frequencyBodyGyroscope.bandsEnergy...33.48.2
502 frequencyBodyGyroscope.bandsEnergy...49.64.2
503 frequencyBodyGyroscope.bandsEnergy...1.24.2
504 frequencyBodyGyroscope.bandsEnergy...25.48.2
505 frequencyBodyAccelerometerMagnitude.mean..
506 frequencyBodyAccelerometerMagnitude.std..
507 frequencyBodyAccelerometerMagnitude.mad..
508 frequencyBodyAccelerometerMagnitude.max..
509 frequencyBodyAccelerometerMagnitude.min..
510 frequencyBodyAccelerometerMagnitude.sma..
511 frequencyBodyAccelerometerMagnitude.energy..
512 frequencyBodyAccelerometerMagnitude.iqr..
513 frequencyBodyAccelerometerMagnitude.entropy..
514 frequencyBodyAccelerometerMagnitude.maxInds
515 frequencyBodyAccelerometerMagnitude.meanFreq..
516 frequencyBodyAccelerometerMagnitude.skewness..
517 frequencyBodyAccelerometerMagnitude.kurtosis..
518 frequencyBodyAccelerometerJerkMagnitude.mean..
519 frequencyBodyAccelerometerJerkMagnitude.std..
520 frequencyBodyAccelerometerJerkMagnitude.mad..
521 frequencyBodyAccelerometerJerkMagnitude.max..
522 frequencyBodyAccelerometerJerkMagnitude.min..
523 frequencyBodyAccelerometerJerkMagnitude.sma..
524 frequencyBodyAccelerometerJerkMagnitude.energy..
525 frequencyBodyAccelerometerJerkMagnitude.iqr..
526 frequencyBodyAccelerometerJerkMagnitude.entropy..
527 frequencyBodyAccelerometerJerkMagnitude.maxInds
528 frequencyBodyAccelerometerJerkMagnitude.meanFreq..
529 frequencyBodyAccelerometerJerkMagnitude.skewness..
530 frequencyBodyAccelerometerJerkMagnitude.kurtosis..
531 frequencyBodyGyroscopeMagnitude.mean..
532 frequencyBodyGyroscopeMagnitude.std..
533 frequencyBodyGyroscopeMagnitude.mad..
534 frequencyBodyGyroscopeMagnitude.max..
535 frequencyBodyGyroscopeMagnitude.min..
536 frequencyBodyGyroscopeMagnitude.sma..
537 frequencyBodyGyroscopeMagnitude.energy..
538 frequencyBodyGyroscopeMagnitude.iqr..
539 frequencyBodyGyroscopeMagnitude.entropy..
540 frequencyBodyGyroscopeMagnitude.maxInds
541 frequencyBodyGyroscopeMagnitude.meanFreq..
542 frequencyBodyGyroscopeMagnitude.skewness..
543 frequencyBodyGyroscopeMagnitude.kurtosis..
544 frequencyBodyGyroscopeJerkMagnitude.mean..
545 frequencyBodyGyroscopeJerkMagnitude.std..
546 frequencyBodyGyroscopeJerkMagnitude.mad..
547 frequencyBodyGyroscopeJerkMagnitude.max..
548 frequencyBodyGyroscopeJerkMagnitude.min..
549 frequencyBodyGyroscopeJerkMagnitude.sma..
550 frequencyBodyGyroscopeJerkMagnitude.energy..
551 frequencyBodyGyroscopeJerkMagnitude.iqr..
552 frequencyBodyGyroscopeJerkMagnitude.entropy..
553 frequencyBodyGyroscopeJerkMagnitude.maxInds
554 frequencyBodyGyroscopeJerkMagnitude.meanFreq..
555 frequencyBodyGyroscopeJerkMagnitude.skewness..
556 frequencyBodyGyroscopeJerkMagnitude.kurtosis..
557 angle.tBodyAccelerometerMean.gravity.
558 angle.tBodyAccelerometerJerkMean..gravityMean.
559 angle.tBodyGyroscopeMean.gravityMean.
560 angle.tBodyGyroscopeJerkMean.gravityMean.
561 angle.X.gravityMean.
562 angle.Y.gravityMean.
563 angle.Z.gravityMean.
