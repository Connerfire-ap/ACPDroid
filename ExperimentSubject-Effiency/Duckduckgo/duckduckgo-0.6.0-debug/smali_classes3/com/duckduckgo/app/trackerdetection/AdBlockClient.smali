.class public final Lcom/duckduckgo/app/trackerdetection/AdBlockClient;
.super Ljava/lang/Object;
.source "AdBlockClient.kt"

# interfaces
.implements Lcom/duckduckgo/app/trackerdetection/Client;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u000b\u001a\u00020\u0008H\u0082 J\u0008\u0010\u000c\u001a\u00020\rH\u0004J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0011\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0008H\u0082 J\u000e\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u000fJ\u0019\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u000fH\u0082 J\u000e\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u000fJ\u0019\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u000fH\u0082 J)\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u001aH\u0082 J \u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J!\u0010\u001d\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0082 R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/duckduckgo/app/trackerdetection/AdBlockClient;",
        "Lcom/duckduckgo/app/trackerdetection/Client;",
        "name",
        "Lcom/duckduckgo/app/trackerdetection/Client$ClientName;",
        "(Lcom/duckduckgo/app/trackerdetection/Client$ClientName;)V",
        "getName",
        "()Lcom/duckduckgo/app/trackerdetection/Client$ClientName;",
        "nativeClientPointer",
        "",
        "processedDataPointer",
        "rawDataPointer",
        "createClient",
        "finalize",
        "",
        "getProcessedData",
        "",
        "clientPointer",
        "loadBasicData",
        "data",
        "loadProcessedData",
        "matches",
        "",
        "url",
        "",
        "documentUrl",
        "filterOption",
        "",
        "resourceType",
        "Lcom/duckduckgo/app/trackerdetection/model/ResourceType;",
        "releaseClient",
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
.field private final name:Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

.field private final nativeClientPointer:J

.field private processedDataPointer:J

.field private rawDataPointer:J


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4bd25ec60681b04cL    # -2.3601490083318694E-57

    const/16 v2, 0x13

    const-string v3, "com/duckduckgo/app/trackerdetection/AdBlockClient"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/duckduckgo/app/trackerdetection/Client$ClientName;)V
    .locals 5
    .param p1, "name"    # Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "name"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xf

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->name:Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    .line 30
    const/16 v1, 0x10

    aput-boolean v2, v0, v1

    .line 31
    const-string v1, "adblockclient-lib"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/16 v1, 0x11

    aput-boolean v2, v0, v1

    .line 32
    invoke-direct {p0}, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->createClient()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->nativeClientPointer:J

    .line 33
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->rawDataPointer:J

    .line 34
    iput-wide v3, p0, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->processedDataPointer:J

    .line 35
    const/16 v1, 0x12

    aput-boolean v2, v0, v1

    return-void
.end method

.method private final native createClient()J
.end method

.method private final native getProcessedData(J)[B
.end method

.method private final native loadBasicData(J[B)J
.end method

.method private final native loadProcessedData(J[B)J
.end method

.method private final native matches(JLjava/lang/String;Ljava/lang/String;I)Z
.end method

.method private final native releaseClient(JJJ)V
.end method


# virtual methods
.method protected final finalize()V
    .locals 8

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->$jacocoInit()[Z

    move-result-object v0

    .line 69
    iget-wide v2, p0, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->nativeClientPointer:J

    iget-wide v4, p0, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->rawDataPointer:J

    iget-wide v6, p0, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->processedDataPointer:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->releaseClient(JJJ)V

    .line 70
    const/16 v1, 0xd

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public getName()Lcom/duckduckgo/app/trackerdetection/Client$ClientName;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->name:Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    const/16 v2, 0xe

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final getProcessedData()[B
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    iget-wide v1, p0, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->nativeClientPointer:J

    invoke-direct {p0, v1, v2}, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->getProcessedData(J)[B

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public final loadBasicData([B)V
    .locals 8
    .param p1, "data"    # [B

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "data"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .local v3, "timestamp":J
    aput-boolean v2, v0, v2

    .line 41
    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Loading basic data"

    invoke-static {v6, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x2

    aput-boolean v2, v0, v5

    .line 42
    iget-wide v5, p0, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->nativeClientPointer:J

    invoke-direct {p0, v5, v6, p1}, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->loadBasicData(J[B)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->rawDataPointer:J

    const/4 v5, 0x3

    aput-boolean v2, v0, v5

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading completed in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void
.end method

.method public final loadProcessedData([B)V
    .locals 8
    .param p1, "data"    # [B

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "data"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .local v3, "timestamp":J
    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    .line 50
    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Loading preprocessed data"

    invoke-static {v6, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x7

    aput-boolean v2, v0, v5

    .line 51
    iget-wide v5, p0, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->nativeClientPointer:J

    invoke-direct {p0, v5, v6, p1}, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->loadProcessedData(J[B)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->processedDataPointer:J

    const/16 v5, 0x8

    aput-boolean v2, v0, v5

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading completed in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    return-void
.end method

.method public matches(Ljava/lang/String;Ljava/lang/String;Lcom/duckduckgo/app/trackerdetection/model/ResourceType;)Z
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "documentUrl"    # Ljava/lang/String;
    .param p3, "resourceType"    # Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "documentUrl"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "resourceType"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 62
    iget-wide v4, p0, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->nativeClientPointer:J

    invoke-virtual {p3}, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;->getFilterOption()I

    move-result v8

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/duckduckgo/app/trackerdetection/AdBlockClient;->matches(JLjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    const/16 v3, 0xc

    aput-boolean v2, v0, v3

    return v1
.end method
