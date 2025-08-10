.class public final Lcom/duckduckgo/app/trackerdetection/DisconnectClient;
.super Ljava/lang/Object;
.source "DisconnectClient.kt"

# interfaces
.implements Lcom/duckduckgo/app/trackerdetection/Client;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDisconnectClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisconnectClient.kt\ncom/duckduckgo/app/trackerdetection/DisconnectClient\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,34:1\n704#2:35\n777#2,2:36\n1550#2,3:38\n*E\n*S KotlinDebug\n*F\n+ 1 DisconnectClient.kt\ncom/duckduckgo/app/trackerdetection/DisconnectClient\n*L\n27#1:35\n27#1,2:36\n28#1,3:38\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0005H\u0002J \u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/duckduckgo/app/trackerdetection/DisconnectClient;",
        "Lcom/duckduckgo/app/trackerdetection/Client;",
        "name",
        "Lcom/duckduckgo/app/trackerdetection/Client$ClientName;",
        "trackers",
        "",
        "Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;",
        "(Lcom/duckduckgo/app/trackerdetection/Client$ClientName;Ljava/util/List;)V",
        "getName",
        "()Lcom/duckduckgo/app/trackerdetection/Client$ClientName;",
        "bannedCategories",
        "",
        "matches",
        "",
        "url",
        "documentUrl",
        "resourceType",
        "Lcom/duckduckgo/app/trackerdetection/model/ResourceType;",
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

.field private final trackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/trackerdetection/DisconnectClient;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x592af250a54bc38cL

    const/16 v2, 0x14

    const-string v3, "com/duckduckgo/app/trackerdetection/DisconnectClient"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/trackerdetection/DisconnectClient;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/duckduckgo/app/trackerdetection/Client$ClientName;Ljava/util/List;)V
    .locals 3
    .param p1, "name"    # Lcom/duckduckgo/app/trackerdetection/Client$ClientName;
    .param p2, "trackers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/duckduckgo/app/trackerdetection/Client$ClientName;",
            "Ljava/util/List<",
            "Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/DisconnectClient;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "name"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "trackers"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x12

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duckduckgo/app/trackerdetection/DisconnectClient;->name:Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    iput-object p2, p0, Lcom/duckduckgo/app/trackerdetection/DisconnectClient;->trackers:Ljava/util/List;

    const/16 v1, 0x13

    aput-boolean v2, v0, v1

    return-void
.end method

.method private final bannedCategories()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/DisconnectClient;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    const-string v1, "Analytics"

    const-string v2, "Advertising"

    const-string v3, "Social"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public getName()Lcom/duckduckgo/app/trackerdetection/Client$ClientName;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/DisconnectClient;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/DisconnectClient;->name:Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    const/16 v2, 0x11

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public matches(Ljava/lang/String;Ljava/lang/String;Lcom/duckduckgo/app/trackerdetection/model/ResourceType;)Z
    .locals 17
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "documentUrl"    # Ljava/lang/String;
    .param p3, "resourceType"    # Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    move-object/from16 v0, p1

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/DisconnectClient;->$jacocoInit()[Z

    move-result-object v1

    const-string v2, "url"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "documentUrl"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "resourceType"

    move-object/from16 v4, p3

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    nop

    .line 28
    nop

    .line 26
    nop

    .line 27
    nop

    .line 26
    move-object/from16 v2, p0

    iget-object v5, v2, Lcom/duckduckgo/app/trackerdetection/DisconnectClient;->trackers:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    .line 27
    .local v5, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .local v6, "$i$f$filter":I
    const/4 v7, 0x0

    const/4 v8, 0x1

    aput-boolean v8, v1, v7

    .line 35
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/Collection;

    .local v9, "destination$iv$iv":Ljava/util/Collection;
    move-object v10, v5

    .local v10, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .local v11, "$i$f$filterTo":I
    aput-boolean v8, v1, v8

    .line 36
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x2

    aput-boolean v8, v1, v13

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .local v13, "element$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;

    .local v14, "it":Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;
    const/4 v15, 0x0

    .local v15, "$i$a$-filter-DisconnectClient$matches$1":I
    const/16 v16, 0x3

    aput-boolean v8, v1, v16

    .line 27
    invoke-direct/range {p0 .. p0}, Lcom/duckduckgo/app/trackerdetection/DisconnectClient;->bannedCategories()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v14}, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->getCategory()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    .end local v14    # "it":Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;
    .end local v15    # "$i$a$-filter-DisconnectClient$matches$1":I
    if-nez v7, :cond_0

    const/4 v7, 0x4

    const/4 v8, 0x1

    aput-boolean v8, v1, v7

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    const/4 v8, 0x1

    invoke-interface {v9, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v13    # "element$iv$iv":Ljava/lang/Object;
    const/4 v7, 0x5

    aput-boolean v8, v1, v7

    const/4 v7, 0x0

    goto :goto_0

    .line 37
    :cond_1
    nop

    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$filterTo":I
    move-object v5, v9

    check-cast v5, Ljava/util/List;

    .end local v5    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filter":I
    check-cast v5, Ljava/lang/Iterable;

    .line 28
    .local v5, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .local v6, "$i$f$any":I
    const/4 v7, 0x6

    aput-boolean v8, v1, v7

    .line 38
    instance-of v7, v5, Ljava/util/Collection;

    if-nez v7, :cond_2

    const/4 v7, 0x7

    aput-boolean v8, v1, v7

    goto :goto_1

    :cond_2
    move-object v7, v5

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    const/16 v7, 0x8

    aput-boolean v8, v1, v7

    .line 39
    :goto_1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/16 v9, 0xa

    aput-boolean v8, v1, v9

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;

    .local v10, "it":Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;
    const/4 v11, 0x0

    .local v11, "$i$a$-any-DisconnectClient$matches$2":I
    const/16 v12, 0xb

    aput-boolean v8, v1, v12

    .line 28
    sget-object v12, Lcom/duckduckgo/app/global/UriString;->Companion:Lcom/duckduckgo/app/global/UriString$Companion;

    invoke-virtual {v10}, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->getUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v0, v13}, Lcom/duckduckgo/app/global/UriString$Companion;->sameOrSubdomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .end local v10    # "it":Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;
    .end local v11    # "$i$a$-any-DisconnectClient$matches$2":I
    if-nez v10, :cond_3

    const/16 v10, 0xc

    aput-boolean v8, v1, v10

    goto :goto_2

    :cond_3
    const/16 v7, 0xd

    aput-boolean v8, v1, v7

    const/4 v7, 0x1

    goto :goto_3

    .line 40
    .end local v9    # "element$iv":Ljava/lang/Object;
    :cond_4
    const/16 v7, 0xe

    aput-boolean v8, v1, v7

    const/4 v7, 0x0

    goto :goto_3

    .line 38
    :cond_5
    const/16 v7, 0x9

    aput-boolean v8, v1, v7

    const/4 v7, 0x0

    .line 40
    .end local v5    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$any":I
    :goto_3
    const/16 v5, 0xf

    aput-boolean v8, v1, v5

    return v7
.end method
