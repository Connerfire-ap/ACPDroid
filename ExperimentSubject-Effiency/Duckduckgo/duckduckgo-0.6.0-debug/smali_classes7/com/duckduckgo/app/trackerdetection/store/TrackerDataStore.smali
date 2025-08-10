.class public final Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;
.super Ljava/lang/Object;
.source "TrackerDataStore.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrackerDataStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrackerDataStore.kt\ncom/duckduckgo/app/trackerdetection/store/TrackerDataStore\n*L\n1#1,50:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\tJ\u0016\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\rJ\u0014\u0010\u0010\u001a\u00020\u000b*\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "clearAll",
        "",
        "clearData",
        "client",
        "Lcom/duckduckgo/app/trackerdetection/Client$ClientName;",
        "hasData",
        "",
        "loadData",
        "",
        "saveData",
        "byteArray",
        "fileExists",
        "filename",
        "",
        "duckduckgo-0.6.0_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4c1dbd2d8ce2f9b8L    # 4.666864492436114E58

    const/16 v2, 0x19

    const-string v3, "com/duckduckgo/app/trackerdetection/store/TrackerDataStore"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x17

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;->context:Landroid/content/Context;

    const/16 v1, 0x18

    aput-boolean v2, v0, v1

    return-void
.end method

.method private final fileExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "$this$fileExists"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;->$jacocoInit()[Z

    move-result-object v0

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .local v1, "file":Ljava/io/File;
    const/16 v2, 0x11

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 46
    if-nez v1, :cond_0

    const/16 v2, 0x12

    aput-boolean v3, v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x13

    aput-boolean v3, v0, v2

    :goto_0
    const/4 v2, 0x0

    const/16 v4, 0x15

    aput-boolean v3, v0, v4

    goto :goto_1

    :cond_1
    const/16 v2, 0x14

    aput-boolean v3, v0, v2

    const/4 v2, 0x1

    :goto_1
    const/16 v4, 0x16

    aput-boolean v3, v0, v4

    return v2
.end method


# virtual methods
.method public final clearAll()V
    .locals 8

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;->values()[Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    move-result-object v1

    array-length v2, v1

    const/16 v3, 0xd

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    .local v5, "client":Lcom/duckduckgo/app/trackerdetection/Client$ClientName;
    const/16 v6, 0xe

    aput-boolean v4, v0, v6

    .line 40
    iget-object v6, p0, Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;->context:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 39
    nop

    .end local v5    # "client":Lcom/duckduckgo/app/trackerdetection/Client$ClientName;
    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0xf

    aput-boolean v4, v0, v5

    goto :goto_0

    .line 42
    :cond_0
    const/16 v1, 0x10

    aput-boolean v4, v0, v1

    return-void
.end method

.method public final clearData(Lcom/duckduckgo/app/trackerdetection/Client$ClientName;)V
    .locals 4
    .param p1, "client"    # Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "client"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 35
    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 36
    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    return-void
.end method

.method public final hasData(Lcom/duckduckgo/app/trackerdetection/Client$ClientName;)Z
    .locals 4
    .param p1, "client"    # Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "client"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 25
    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;->fileExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    aput-boolean v2, v0, v2

    return v1
.end method

.method public final loadData(Lcom/duckduckgo/app/trackerdetection/Client$ClientName;)[B
    .locals 8
    .param p1, "client"    # Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "client"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 28
    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Throwable;

    const/4 v4, 0x3

    :try_start_0
    aput-boolean v2, v0, v4

    move-object v4, v1

    check-cast v4, Ljava/io/FileInputStream;

    .local v4, "it":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    const/4 v6, 0x4

    aput-boolean v2, v0, v6

    .local v5, "$i$a$-use-TrackerDataStore$loadData$1":I
    const-string v6, "it"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v4

    check-cast v6, Ljava/io/InputStream;

    invoke-static {v6}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v6

    const/4 v7, 0x5

    aput-boolean v2, v0, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "it":Ljava/io/FileInputStream;
    .end local v5    # "$i$a$-use-TrackerDataStore$loadData$1":I
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    return-object v6

    :catchall_0
    move-exception v3

    const/4 v4, 0x6

    :try_start_1
    aput-boolean v2, v0, v4

    .end local p1    # "client":Lcom/duckduckgo/app/trackerdetection/Client$ClientName;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local p1    # "client":Lcom/duckduckgo/app/trackerdetection/Client$ClientName;
    :catchall_1
    move-exception v4

    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const/4 v1, 0x7

    aput-boolean v2, v0, v1

    throw v4
.end method

.method public final saveData(Lcom/duckduckgo/app/trackerdetection/Client$ClientName;[B)V
    .locals 5
    .param p1, "client"    # Lcom/duckduckgo/app/trackerdetection/Client$ClientName;
    .param p2, "byteArray"    # [B

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "client"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "byteArray"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 31
    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/duckduckgo/app/trackerdetection/Client$ClientName;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 32
    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    return-void
.end method
