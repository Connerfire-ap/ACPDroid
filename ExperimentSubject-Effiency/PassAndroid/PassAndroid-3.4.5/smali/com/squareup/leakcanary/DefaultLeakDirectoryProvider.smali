.class public final Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;
.super Ljava/lang/Object;
.source "DefaultLeakDirectoryProvider.java"

# interfaces
.implements Lcom/squareup/leakcanary/LeakDirectoryProvider;


# static fields
.field private static final ANALYSIS_MAX_DURATION_MS:I = 0x927c0

.field private static final DEFAULT_MAX_STORED_HEAP_DUMPS:I = 0x7

.field private static final HPROF_SUFFIX:Ljava/lang/String; = ".hprof"

.field private static final PENDING_HEAPDUMP_SUFFIX:Ljava/lang/String; = "_pending.hprof"


# instance fields
.field private final context:Landroid/content/Context;

.field private final maxStoredHeapDumps:I

.field private volatile permissionNotificationDisplayed:Z

.field private volatile writeExternalStorageGranted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;-><init>(Landroid/content/Context;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxStoredHeapDumps"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxStoredHeapDumps must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->context:Landroid/content/Context;

    .line 65
    iput p2, p0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->maxStoredHeapDumps:I

    .line 66
    return-void
.end method

.method private appStorageDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 179
    iget-object v1, p0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 180
    .local v0, "appFilesDirectory":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "leakcanary"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private cleanupOldHeapDumps()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 189
    new-instance v4, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider$3;

    invoke-direct {v4, p0}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider$3;-><init>(Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;)V

    invoke-virtual {p0, v4}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->listFiles(Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v2

    .line 194
    .local v2, "hprofFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    iget v5, p0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->maxStoredHeapDumps:I

    sub-int v1, v4, v5

    .line 195
    .local v1, "filesToRemove":I
    if-lez v1, :cond_1

    .line 196
    const-string v4, "Removing %d heap dumps"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    new-instance v4, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider$4;

    invoke-direct {v4, p0}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider$4;-><init>(Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 203
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 204
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    .line 205
    .local v0, "deleted":Z
    if-nez v0, :cond_0

    .line 206
    const-string v5, "Could not delete old hprof file %s"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 210
    .end local v0    # "deleted":Z
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private directoryWritableAfterMkdirs(Ljava/io/File;)Z
    .locals 2
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    .line 184
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 185
    .local v0, "success":Z
    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private externalStorageDirectory()Ljava/io/File;
    .locals 4

    .prologue
    .line 174
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 175
    .local v0, "downloadsDirectory":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "leakcanary-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private hasStoragePermission()Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 147
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    iget-boolean v1, p0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->writeExternalStorageGranted:Z

    if-nez v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->context:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 155
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->writeExternalStorageGranted:Z

    .line 156
    iget-boolean v0, p0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->writeExternalStorageGranted:Z

    goto :goto_0

    .line 155
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private requestWritePermissionNotification()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 160
    iget-boolean v4, p0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->permissionNotificationDisplayed:Z

    if-eqz v4, :cond_0

    .line 171
    :goto_0
    return-void

    .line 163
    :cond_0
    iput-boolean v6, p0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->permissionNotificationDisplayed:Z

    .line 165
    iget-object v4, p0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/squareup/leakcanary/internal/RequestStoragePermissionActivity;->createPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 166
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->context:Landroid/content/Context;

    sget v5, Lcom/squareup/leakcanary/R$string;->leak_canary_permission_notification_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "contentTitle":Ljava/lang/String;
    iget-object v4, p0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "packageName":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->context:Landroid/content/Context;

    sget v5, Lcom/squareup/leakcanary/R$string;->leak_canary_permission_notification_text:I

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    .line 169
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "contentText":Ljava/lang/String;
    iget-object v4, p0, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->context:Landroid/content/Context;

    const v5, -0x21504111

    invoke-static {v4, v1, v0, v3, v5}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->showNotification(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;I)V

    goto :goto_0
.end method


# virtual methods
.method public clearLeakDirectory()V
    .locals 8

    .prologue
    .line 133
    new-instance v3, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider$2;

    invoke-direct {v3, p0}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider$2;-><init>(Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;)V

    invoke-virtual {p0, v3}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->listFiles(Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v0

    .line 138
    .local v0, "allFilesExceptPending":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 139
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    .line 140
    .local v1, "deleted":Z
    if-nez v1, :cond_0

    .line 141
    const-string v4, "Could not delete file %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 144
    .end local v1    # "deleted":Z
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    return-void
.end method

.method public listFiles(Ljava/io/FilenameFilter;)Ljava/util/List;
    .locals 4
    .param p1, "filter"    # Ljava/io/FilenameFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FilenameFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->hasStoragePermission()Z

    move-result v3

    if-nez v3, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->requestWritePermissionNotification()V

    .line 72
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v2, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct {p0}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->externalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 75
    .local v1, "externalFiles":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 76
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    :cond_1
    invoke-direct {p0}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->appStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 80
    .local v0, "appFiles":[Ljava/io/File;
    if-eqz v0, :cond_2

    .line 81
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    :cond_2
    return-object v2
.end method

.method public newHeapDumpFile()Ljava/io/File;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 87
    new-instance v4, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider$1;

    invoke-direct {v4, p0}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider$1;-><init>(Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;)V

    invoke-virtual {p0, v4}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->listFiles(Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v1

    .line 96
    .local v1, "pendingHeapDumps":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 97
    .local v0, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x927c0

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    .line 98
    const-string v4, "Could not dump heap, previous analysis still is in progress."

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    sget-object v4, Lcom/squareup/leakcanary/HeapDumper;->RETRY_LATER:Ljava/io/File;

    .line 129
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return-object v4

    .line 103
    :cond_1
    invoke-direct {p0}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->cleanupOldHeapDumps()V

    .line 105
    invoke-direct {p0}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->externalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 106
    .local v3, "storageDirectory":Ljava/io/File;
    invoke-direct {p0, v3}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->directoryWritableAfterMkdirs(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 107
    invoke-direct {p0}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->hasStoragePermission()Z

    move-result v4

    if-nez v4, :cond_2

    .line 108
    const-string v4, "WRITE_EXTERNAL_STORAGE permission not granted"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-direct {p0}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->requestWritePermissionNotification()V

    .line 120
    :goto_1
    invoke-direct {p0}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->appStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 121
    invoke-direct {p0, v3}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->directoryWritableAfterMkdirs(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 122
    const-string v4, "Could not create heap dump directory in app storage: [%s]"

    new-array v5, v11, [Ljava/lang/Object;

    .line 123
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 122
    invoke-static {v4, v5}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    sget-object v4, Lcom/squareup/leakcanary/HeapDumper;->RETRY_LATER:Ljava/io/File;

    goto :goto_0

    .line 111
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "state":Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 113
    const-string v4, "External storage not mounted, state: %s"

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v2, v5, v10

    invoke-static {v4, v5}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 115
    :cond_3
    const-string v4, "Could not create heap dump directory in external storage: [%s]"

    new-array v5, v11, [Ljava/lang/Object;

    .line 116
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 115
    invoke-static {v4, v5}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 129
    .end local v2    # "state":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_pending.hprof"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method
