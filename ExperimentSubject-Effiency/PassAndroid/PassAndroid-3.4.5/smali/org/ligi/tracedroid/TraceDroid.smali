.class public Lorg/ligi/tracedroid/TraceDroid;
.super Ljava/lang/Object;
.source "TraceDroid.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final deleteStacktraceFiles()V
    .locals 4

    .prologue
    .line 114
    invoke-static {}, Lorg/ligi/tracedroid/TraceDroid;->getStackTraceFiles()[Ljava/io/File;

    move-result-object v1

    .local v1, "arr$":[Ljava/io/File;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 115
    .local v0, "act_file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "act_file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public static getEnsuredTraceDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/ligi/tracedroid/collecting/TraceDroidMetaInfo;->getFilesPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "trace_files_dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 57
    :cond_0
    return-object v0
.end method

.method public static getStackTraceFiles()[Ljava/io/File;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lorg/ligi/tracedroid/TraceDroid$1;

    invoke-direct {v0}, Lorg/ligi/tracedroid/TraceDroid$1;-><init>()V

    .line 73
    .local v0, "filter":Ljava/io/FilenameFilter;
    invoke-static {}, Lorg/ligi/tracedroid/TraceDroid;->getEnsuredTraceDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public static getStackTraceText(I)Ljava/lang/String;
    .locals 11
    .param p0, "limit"    # I

    .prologue
    .line 77
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Searching Exceptions in: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lorg/ligi/tracedroid/collecting/TraceDroidMetaInfo;->getFilesPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/ligi/tracedroid/logging/Log;->d(Ljava/lang/String;)V

    .line 79
    const-string v8, ""

    .line 80
    .local v8, "stack_trace_text":Ljava/lang/String;
    invoke-static {}, Lorg/ligi/tracedroid/TraceDroid;->getStackTraceFiles()[Ljava/io/File;

    move-result-object v1

    .local v1, "arr$":[Ljava/io/File;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v6, p0

    .end local p0    # "limit":I
    .local v6, "limit":I
    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v0, v1, v3

    .line 82
    .local v0, "act_file":Ljava/io/File;
    add-int/lit8 p0, v6, -0x1

    .end local v6    # "limit":I
    .restart local p0    # "limit":I
    if-lez v6, :cond_1

    .line 84
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 85
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "line.separator"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 87
    add-int/lit8 v6, p0, -0x1

    .end local p0    # "limit":I
    .restart local v6    # "limit":I
    if-lez p0, :cond_2

    .line 89
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    .local v4, "input":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 93
    .local v7, "line":Ljava/lang/String;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 94
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 95
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "line.separator"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    goto :goto_1

    .line 99
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .end local v4    # "input":Ljava/io/BufferedReader;
    .end local v7    # "line":Ljava/lang/String;
    :goto_2
    move p0, v6

    .line 80
    .end local v6    # "limit":I
    .restart local p0    # "limit":I
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v6, p0

    .end local p0    # "limit":I
    .restart local v6    # "limit":I
    goto :goto_0

    .line 99
    .restart local v4    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v9

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    throw v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 104
    .end local v4    # "input":Ljava/io/BufferedReader;
    .end local v7    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    move p0, v6

    .line 105
    .end local v6    # "limit":I
    .local v2, "e":Ljava/lang/Exception;
    .restart local p0    # "limit":I
    :goto_4
    const-string v9, "problem loading stacktrace"

    invoke-static {v9, v2}, Lorg/ligi/tracedroid/logging/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 102
    .end local v2    # "e":Ljava/lang/Exception;
    .end local p0    # "limit":I
    .restart local v6    # "limit":I
    :cond_2
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " discarded by limit"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v8

    goto :goto_2

    .line 110
    .end local v0    # "act_file":Ljava/io/File;
    :cond_3
    return-object v8

    .line 104
    .end local v6    # "limit":I
    .restart local v0    # "act_file":Ljava/io/File;
    .restart local p0    # "limit":I
    :catch_1
    move-exception v2

    goto :goto_4
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-static {p0}, Lorg/ligi/tracedroid/collecting/TraceDroidMetaInfo;->init(Landroid/content/Context;)V

    .line 29
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 31
    .local v0, "currentHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v0, :cond_0

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current handler class="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/ligi/tracedroid/logging/Log;->d(Ljava/lang/String;)V

    .line 37
    :cond_0
    instance-of v2, v0, Lorg/ligi/tracedroid/collecting/UncaughtExceptionSaver;

    if-nez v2, :cond_1

    .line 39
    new-instance v1, Lorg/ligi/tracedroid/collecting/UncaughtExceptionSaver;

    invoke-direct {v1, v0}, Lorg/ligi/tracedroid/collecting/UncaughtExceptionSaver;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 40
    .local v1, "exceptionSaver":Lorg/ligi/tracedroid/collecting/UncaughtExceptionSaver;
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 42
    .end local v1    # "exceptionSaver":Lorg/ligi/tracedroid/collecting/UncaughtExceptionSaver;
    :cond_1
    return-void
.end method
