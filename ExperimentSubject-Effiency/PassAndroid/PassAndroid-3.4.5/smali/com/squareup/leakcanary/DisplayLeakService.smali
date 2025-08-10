.class public Lcom/squareup/leakcanary/DisplayLeakService;
.super Lcom/squareup/leakcanary/AbstractAnalysisResultService;
.source "DisplayLeakService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/squareup/leakcanary/AbstractAnalysisResultService;-><init>()V

    return-void
.end method

.method private renameHeapdump(Lcom/squareup/leakcanary/HeapDump;)Lcom/squareup/leakcanary/HeapDump;
    .locals 13
    .param p1, "heapDump"    # Lcom/squareup/leakcanary/HeapDump;

    .prologue
    .line 112
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd_HH-mm-ss_SSS\'.hprof\'"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 113
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v1, p1, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .local v2, "newFile":Ljava/io/File;
    iget-object v1, p1, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v12

    .line 117
    .local v12, "renamed":Z
    if-nez v12, :cond_0

    .line 118
    const-string v1, "Could not rename heap dump file %s to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 119
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 118
    invoke-static {v1, v3}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :cond_0
    new-instance v1, Lcom/squareup/leakcanary/HeapDump;

    iget-object v3, p1, Lcom/squareup/leakcanary/HeapDump;->referenceKey:Ljava/lang/String;

    iget-object v4, p1, Lcom/squareup/leakcanary/HeapDump;->referenceName:Ljava/lang/String;

    iget-object v5, p1, Lcom/squareup/leakcanary/HeapDump;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    iget-wide v6, p1, Lcom/squareup/leakcanary/HeapDump;->watchDurationMs:J

    iget-wide v8, p1, Lcom/squareup/leakcanary/HeapDump;->gcDurationMs:J

    iget-wide v10, p1, Lcom/squareup/leakcanary/HeapDump;->heapDumpDurationMs:J

    invoke-direct/range {v1 .. v11}, Lcom/squareup/leakcanary/HeapDump;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/leakcanary/ExcludedRefs;JJJ)V

    return-object v1
.end method

.method private saveResult(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;)Z
    .locals 9
    .param p1, "heapDump"    # Lcom/squareup/leakcanary/HeapDump;
    .param p2, "result"    # Lcom/squareup/leakcanary/AnalysisResult;

    .prologue
    const/4 v5, 0x0

    .line 89
    new-instance v4, Ljava/io/File;

    iget-object v6, p1, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    .line 90
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".result"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .local v4, "resultFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 93
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 95
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {v3, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    const/4 v5, 0x1

    .line 101
    if-eqz v2, :cond_0

    .line 103
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    move-object v1, v2

    .line 108
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return v5

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v6, "Could not save leak analysis result to disk."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    if-eqz v1, :cond_1

    .line 103
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 104
    :catch_1
    move-exception v6

    goto :goto_1

    .line 101
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v1, :cond_2

    .line 103
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 105
    :cond_2
    :goto_4
    throw v5

    .line 104
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v6

    goto :goto_4

    .line 101
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 98
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method protected afterDefaultHandling(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Ljava/lang/String;)V
    .locals 0
    .param p1, "heapDump"    # Lcom/squareup/leakcanary/HeapDump;
    .param p2, "result"    # Lcom/squareup/leakcanary/AnalysisResult;
    .param p3, "leakInfo"    # Ljava/lang/String;

    .prologue
    .line 132
    return-void
.end method

.method protected final onHeapAnalyzed(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;)V
    .locals 18
    .param p1, "heapDump"    # Lcom/squareup/leakcanary/HeapDump;
    .param p2, "result"    # Lcom/squareup/leakcanary/AnalysisResult;

    .prologue
    .line 44
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v13}, Lcom/squareup/leakcanary/LeakCanary;->leakInfo(Landroid/content/Context;Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Z)Ljava/lang/String;

    move-result-object v7

    .line 45
    .local v7, "leakInfo":Ljava/lang/String;
    const-string v13, "%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    invoke-static {v13, v14}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    const/4 v10, 0x0

    .line 48
    .local v10, "resultSaved":Z
    move-object/from16 v0, p2

    iget-boolean v13, v0, Lcom/squareup/leakcanary/AnalysisResult;->leakFound:Z

    if-nez v13, :cond_0

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    if-eqz v13, :cond_2

    :cond_0
    const/4 v11, 0x1

    .line 49
    .local v11, "shouldSaveResult":Z
    :goto_0
    if-eqz v11, :cond_1

    .line 50
    invoke-direct/range {p0 .. p1}, Lcom/squareup/leakcanary/DisplayLeakService;->renameHeapdump(Lcom/squareup/leakcanary/HeapDump;)Lcom/squareup/leakcanary/HeapDump;

    move-result-object p1

    .line 51
    invoke-direct/range {p0 .. p2}, Lcom/squareup/leakcanary/DisplayLeakService;->saveResult(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;)Z

    move-result v10

    .line 58
    :cond_1
    if-nez v11, :cond_3

    .line 59
    sget v13, Lcom/squareup/leakcanary/R$string;->leak_canary_no_leak_title:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/squareup/leakcanary/DisplayLeakService;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 60
    .local v6, "contentTitle":Ljava/lang/String;
    sget v13, Lcom/squareup/leakcanary/R$string;->leak_canary_no_leak_text:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/squareup/leakcanary/DisplayLeakService;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "contentText":Ljava/lang/String;
    const/4 v9, 0x0

    .line 83
    .local v9, "pendingIntent":Landroid/app/PendingIntent;
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v8, v14

    .line 84
    .local v8, "notificationId":I
    move-object/from16 v0, p0

    invoke-static {v0, v6, v5, v9, v8}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->showNotification(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;I)V

    .line 85
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v7}, Lcom/squareup/leakcanary/DisplayLeakService;->afterDefaultHandling(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Ljava/lang/String;)V

    .line 86
    return-void

    .line 48
    .end local v5    # "contentText":Ljava/lang/String;
    .end local v6    # "contentTitle":Ljava/lang/String;
    .end local v8    # "notificationId":I
    .end local v9    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v11    # "shouldSaveResult":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 62
    .restart local v11    # "shouldSaveResult":Z
    :cond_3
    if-eqz v10, :cond_6

    .line 63
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/squareup/leakcanary/HeapDump;->referenceKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 65
    .restart local v9    # "pendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    if-nez v13, :cond_5

    .line 66
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/squareup/leakcanary/AnalysisResult;->retainedHeapSize:J

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 67
    .local v12, "size":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/squareup/leakcanary/AnalysisResult;->className:Ljava/lang/String;

    invoke-static {v13}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->classSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "className":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-boolean v13, v0, Lcom/squareup/leakcanary/AnalysisResult;->excludedLeak:Z

    if-eqz v13, :cond_4

    .line 69
    sget v13, Lcom/squareup/leakcanary/R$string;->leak_canary_leak_excluded:I

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    const/4 v15, 0x1

    aput-object v12, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/squareup/leakcanary/DisplayLeakService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 76
    .end local v4    # "className":Ljava/lang/String;
    .end local v12    # "size":Ljava/lang/String;
    .restart local v6    # "contentTitle":Ljava/lang/String;
    :goto_2
    sget v13, Lcom/squareup/leakcanary/R$string;->leak_canary_notification_message:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/squareup/leakcanary/DisplayLeakService;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "contentText":Ljava/lang/String;
    goto :goto_1

    .line 71
    .end local v5    # "contentText":Ljava/lang/String;
    .end local v6    # "contentTitle":Ljava/lang/String;
    .restart local v4    # "className":Ljava/lang/String;
    .restart local v12    # "size":Ljava/lang/String;
    :cond_4
    sget v13, Lcom/squareup/leakcanary/R$string;->leak_canary_class_has_leaked:I

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    const/4 v15, 0x1

    aput-object v12, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/squareup/leakcanary/DisplayLeakService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "contentTitle":Ljava/lang/String;
    goto :goto_2

    .line 74
    .end local v4    # "className":Ljava/lang/String;
    .end local v6    # "contentTitle":Ljava/lang/String;
    .end local v12    # "size":Ljava/lang/String;
    :cond_5
    sget v13, Lcom/squareup/leakcanary/R$string;->leak_canary_analysis_failed:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/squareup/leakcanary/DisplayLeakService;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "contentTitle":Ljava/lang/String;
    goto :goto_2

    .line 78
    .end local v6    # "contentTitle":Ljava/lang/String;
    .end local v9    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_6
    sget v13, Lcom/squareup/leakcanary/R$string;->leak_canary_could_not_save_title:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/squareup/leakcanary/DisplayLeakService;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 79
    .restart local v6    # "contentTitle":Ljava/lang/String;
    sget v13, Lcom/squareup/leakcanary/R$string;->leak_canary_could_not_save_text:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/squareup/leakcanary/DisplayLeakService;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 80
    .restart local v5    # "contentText":Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9    # "pendingIntent":Landroid/app/PendingIntent;
    goto/16 :goto_1
.end method
