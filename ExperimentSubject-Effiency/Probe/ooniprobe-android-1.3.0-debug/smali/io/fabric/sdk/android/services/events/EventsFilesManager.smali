.class public abstract Lio/fabric/sdk/android/services/events/EventsFilesManager;
.super Ljava/lang/Object;
.source "EventsFilesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/events/EventsFilesManager$FileWithTimestamp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final MAX_BYTE_SIZE_PER_FILE:I = 0x1f40

.field public static final MAX_FILES_IN_BATCH:I = 0x1

.field public static final MAX_FILES_TO_KEEP:I = 0x64

.field public static final ROLL_OVER_FILE_NAME_SEPARATOR:Ljava/lang/String; = "_"


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final currentTimeProvider:Lio/fabric/sdk/android/services/common/CurrentTimeProvider;

.field private final defaultMaxFilesToKeep:I

.field protected final eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

.field protected volatile lastRollOverTime:J

.field protected final rollOverListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/fabric/sdk/android/services/events/EventsStorageListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final transform:Lio/fabric/sdk/android/services/events/EventTransform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/events/EventTransform<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/fabric/sdk/android/services/events/EventTransform;Lio/fabric/sdk/android/services/common/CurrentTimeProvider;Lio/fabric/sdk/android/services/events/EventsStorage;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "currentTimeProvider"    # Lio/fabric/sdk/android/services/common/CurrentTimeProvider;
    .param p4, "eventStorage"    # Lio/fabric/sdk/android/services/events/EventsStorage;
    .param p5, "defaultMaxFilesToKeep"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/fabric/sdk/android/services/events/EventTransform<",
            "TT;>;",
            "Lio/fabric/sdk/android/services/common/CurrentTimeProvider;",
            "Lio/fabric/sdk/android/services/events/EventsStorage;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsFilesManager;, "Lio/fabric/sdk/android/services/events/EventsFilesManager<TT;>;"
    .local p2, "transform":Lio/fabric/sdk/android/services/events/EventTransform;, "Lio/fabric/sdk/android/services/events/EventTransform<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->rollOverListeners:Ljava/util/List;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->context:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->transform:Lio/fabric/sdk/android/services/events/EventTransform;

    .line 77
    iput-object p4, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

    .line 78
    iput-object p3, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->currentTimeProvider:Lio/fabric/sdk/android/services/common/CurrentTimeProvider;

    .line 80
    invoke-interface {p3}, Lio/fabric/sdk/android/services/common/CurrentTimeProvider;->getCurrentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->lastRollOverTime:J

    .line 82
    iput p5, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->defaultMaxFilesToKeep:I

    .line 83
    return-void
.end method

.method private rollFileOverIfNeeded(I)V
    .locals 4
    .param p1, "newEventSizeInBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsFilesManager;, "Lio/fabric/sdk/android/services/events/EventsFilesManager<TT;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/events/EventsFilesManager;->getMaxByteSizePerFile()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lio/fabric/sdk/android/services/events/EventsStorage;->canWorkingFileStore(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

    invoke-interface {v3}, Lio/fabric/sdk/android/services/events/EventsStorage;->getWorkingFileUsedSizeInBytes()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/events/EventsFilesManager;->getMaxByteSizePerFile()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "session analytics events file is %d bytes, new event is %d bytes, this is over flush limit of %d, rolling it over"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->context:Landroid/content/Context;

    const/4 v2, 0x4

    const-string v3, "Fabric"

    invoke-static {v1, v2, v3, v0}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlled(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/events/EventsFilesManager;->rollFileOver()Z

    .line 147
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private triggerRollOverOnListeners(Ljava/lang/String;)V
    .locals 5
    .param p1, "rolledOverFile"    # Ljava/lang/String;

    .line 168
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsFilesManager;, "Lio/fabric/sdk/android/services/events/EventsFilesManager<TT;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->rollOverListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/fabric/sdk/android/services/events/EventsStorageListener;

    .line 170
    .local v1, "eventStorageRollOverListener":Lio/fabric/sdk/android/services/events/EventsStorageListener;
    :try_start_0
    invoke-interface {v1, p1}, Lio/fabric/sdk/android/services/events/EventsStorageListener;->onRollOver(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    goto :goto_1

    .line 171
    :catch_0
    move-exception v2

    .line 172
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->context:Landroid/content/Context;

    const-string v4, "One of the roll over listeners threw an exception"

    invoke-static {v3, v4, v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlledError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    .end local v1    # "eventStorageRollOverListener":Lio/fabric/sdk/android/services/events/EventsStorageListener;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 176
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method


# virtual methods
.method public deleteAllEventsFiles()V
    .locals 2

    .line 187
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsFilesManager;, "Lio/fabric/sdk/android/services/events/EventsFilesManager<TT;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/events/EventsStorage;->getAllFilesInRollOverDirectory()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/events/EventsStorage;->deleteFilesInRollOverDirectory(Ljava/util/List;)V

    .line 189
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/events/EventsStorage;->deleteWorkingFile()V

    .line 190
    return-void
.end method

.method public deleteOldestInRollOverIfOverMax()V
    .locals 9

    .line 193
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsFilesManager;, "Lio/fabric/sdk/android/services/events/EventsFilesManager<TT;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/events/EventsStorage;->getAllFilesInRollOverDirectory()Ljava/util/List;

    move-result-object v0

    .line 194
    .local v0, "allFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/events/EventsFilesManager;->getMaxFilesToKeep()I

    move-result v1

    .line 196
    .local v1, "maxFiles":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 197
    return-void

    .line 200
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .line 202
    .local v2, "numberOfFilesToDelete":I
    iget-object v3, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->context:Landroid/content/Context;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "Found %d files in  roll over directory, this is greater than %d, deleting %d oldest files"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlled(Landroid/content/Context;Ljava/lang/String;)V

    .line 207
    new-instance v3, Ljava/util/TreeSet;

    new-instance v4, Lio/fabric/sdk/android/services/events/EventsFilesManager$1;

    invoke-direct {v4, p0}, Lio/fabric/sdk/android/services/events/EventsFilesManager$1;-><init>(Lio/fabric/sdk/android/services/events/EventsFilesManager;)V

    invoke-direct {v3, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 215
    .local v3, "sortedFiles":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lio/fabric/sdk/android/services/events/EventsFilesManager$FileWithTimestamp;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 216
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lio/fabric/sdk/android/services/events/EventsFilesManager;->parseCreationTimestampFromFileName(Ljava/lang/String;)J

    move-result-wide v6

    .line 217
    .local v6, "creationTimestamp":J
    new-instance v8, Lio/fabric/sdk/android/services/events/EventsFilesManager$FileWithTimestamp;

    invoke-direct {v8, v5, v6, v7}, Lio/fabric/sdk/android/services/events/EventsFilesManager$FileWithTimestamp;-><init>(Ljava/io/File;J)V

    invoke-virtual {v3, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 218
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "creationTimestamp":J
    goto :goto_0

    .line 220
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v4, "toDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/fabric/sdk/android/services/events/EventsFilesManager$FileWithTimestamp;

    .line 222
    .local v6, "fileWithTimestamp":Lio/fabric/sdk/android/services/events/EventsFilesManager$FileWithTimestamp;
    iget-object v7, v6, Lio/fabric/sdk/android/services/events/EventsFilesManager$FileWithTimestamp;->file:Ljava/io/File;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v2, :cond_2

    .line 225
    goto :goto_2

    .line 227
    .end local v6    # "fileWithTimestamp":Lio/fabric/sdk/android/services/events/EventsFilesManager$FileWithTimestamp;
    :cond_2
    goto :goto_1

    .line 229
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    iget-object v5, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

    invoke-interface {v5, v4}, Lio/fabric/sdk/android/services/events/EventsStorage;->deleteFilesInRollOverDirectory(Ljava/util/List;)V

    .line 230
    return-void
.end method

.method public deleteSentFiles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 183
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsFilesManager;, "Lio/fabric/sdk/android/services/events/EventsFilesManager<TT;>;"
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/events/EventsStorage;->deleteFilesInRollOverDirectory(Ljava/util/List;)V

    .line 184
    return-void
.end method

.method protected abstract generateUniqueRollOverFileName()Ljava/lang/String;
.end method

.method public getBatchOfFilesToSend()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 179
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsFilesManager;, "Lio/fabric/sdk/android/services/events/EventsFilesManager<TT;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/events/EventsStorage;->getBatchOfFilesToSend(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastRollOverTime()J
    .locals 2

    .line 164
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsFilesManager;, "Lio/fabric/sdk/android/services/events/EventsFilesManager<TT;>;"
    iget-wide v0, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->lastRollOverTime:J

    return-wide v0
.end method

.method protected getMaxByteSizePerFile()I
    .locals 1

    .line 160
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsFilesManager;, "Lio/fabric/sdk/android/services/events/EventsFilesManager<TT;>;"
    const/16 v0, 0x1f40

    return v0
.end method

.method protected getMaxFilesToKeep()I
    .locals 1

    .line 156
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsFilesManager;, "Lio/fabric/sdk/android/services/events/EventsFilesManager<TT;>;"
    iget v0, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->defaultMaxFilesToKeep:I

    return v0
.end method

.method public parseCreationTimestampFromFileName(Ljava/lang/String;)J
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .line 233
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsFilesManager;, "Lio/fabric/sdk/android/services/events/EventsFilesManager<TT;>;"
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "fileNameParts":[Ljava/lang/String;
    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    .line 236
    return-wide v2

    .line 240
    :cond_0
    const/4 v1, 0x2

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/NumberFormatException;
    return-wide v2
.end method

.method public registerRollOverListener(Lio/fabric/sdk/android/services/events/EventsStorageListener;)V
    .locals 1
    .param p1, "listener"    # Lio/fabric/sdk/android/services/events/EventsStorageListener;

    .line 97
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsFilesManager;, "Lio/fabric/sdk/android/services/events/EventsFilesManager<TT;>;"
    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->rollOverListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    return-void
.end method

.method public rollFileOver()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsFilesManager;, "Lio/fabric/sdk/android/services/events/EventsFilesManager<TT;>;"
    const/4 v0, 0x0

    .line 108
    .local v0, "fileRolledOver":Z
    const/4 v1, 0x0

    .line 112
    .local v1, "targetFileName":Ljava/lang/String;
    iget-object v2, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

    invoke-interface {v2}, Lio/fabric/sdk/android/services/events/EventsStorage;->isWorkingFileEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/events/EventsFilesManager;->generateUniqueRollOverFileName()Ljava/lang/String;

    move-result-object v1

    .line 114
    iget-object v2, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

    invoke-interface {v2, v1}, Lio/fabric/sdk/android/services/events/EventsStorage;->rollOver(Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->context:Landroid/content/Context;

    const/4 v3, 0x4

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const-string v6, "generated new file %s"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Fabric"

    invoke-static {v2, v3, v5, v4}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlled(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->currentTimeProvider:Lio/fabric/sdk/android/services/common/CurrentTimeProvider;

    invoke-interface {v2}, Lio/fabric/sdk/android/services/common/CurrentTimeProvider;->getCurrentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->lastRollOverTime:J

    .line 123
    const/4 v0, 0x1

    .line 126
    :cond_0
    invoke-direct {p0, v1}, Lio/fabric/sdk/android/services/events/EventsFilesManager;->triggerRollOverOnListeners(Ljava/lang/String;)V

    .line 127
    return v0
.end method

.method public writeEvent(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    .local p0, "this":Lio/fabric/sdk/android/services/events/EventsFilesManager;, "Lio/fabric/sdk/android/services/events/EventsFilesManager<TT;>;"
    .local p1, "event":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->transform:Lio/fabric/sdk/android/services/events/EventTransform;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/events/EventTransform;->toBytes(Ljava/lang/Object;)[B

    move-result-object v0

    .line 87
    .local v0, "eventBytes":[B
    array-length v1, v0

    invoke-direct {p0, v1}, Lio/fabric/sdk/android/services/events/EventsFilesManager;->rollFileOverIfNeeded(I)V

    .line 89
    iget-object v1, p0, Lio/fabric/sdk/android/services/events/EventsFilesManager;->eventStorage:Lio/fabric/sdk/android/services/events/EventsStorage;

    invoke-interface {v1, v0}, Lio/fabric/sdk/android/services/events/EventsStorage;->add([B)V

    .line 90
    return-void
.end method
