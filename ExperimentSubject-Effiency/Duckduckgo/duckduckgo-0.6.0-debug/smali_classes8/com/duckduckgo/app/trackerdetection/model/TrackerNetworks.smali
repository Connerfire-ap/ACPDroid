.class public final Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;
.super Ljava/lang/Object;
.source "TrackerNetworks.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrackerNetworks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrackerNetworks.kt\ncom/duckduckgo/app/trackerdetection/model/TrackerNetworks\n*L\n1#1,60:1\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u0010\u0010\n\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000b\u001a\u00020\tJ\u0014\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;",
        "Ljava/io/Serializable;",
        "()V",
        "data",
        "",
        "Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;",
        "majorNetwork",
        "Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;",
        "networkName",
        "",
        "network",
        "url",
        "updateData",
        "",
        "trackers",
        "Companion",
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

.field public static final Companion:Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks$Companion;

.field private static majorNetworks:[Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;


# instance fields
.field private data:Ljava/util/List;
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

    sget-object v0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x647b4d6f2e750c9dL    # -4.086117993805544E-176

    const/16 v2, 0x23

    const-string v3, "com/duckduckgo/app/trackerdetection/model/TrackerNetworks"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;->$jacocoInit()[Z

    move-result-object v0

    new-instance v1, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;->Companion:Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks$Companion;

    .line 30
    const/16 v1, 0xa

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 30
    new-array v1, v1, [Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    const/16 v3, 0x18

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    .line 31
    new-instance v3, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    const/16 v5, 0x54

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "google"

    const-string v7, "google.com"

    invoke-direct {v3, v6, v7, v5, v4}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    const/4 v5, 0x0

    aput-object v3, v1, v5

    const/16 v3, 0x19

    aput-boolean v4, v0, v3

    .line 32
    new-instance v3, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    const/16 v5, 0x24

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "facebook"

    const-string v7, "facebook.com"

    invoke-direct {v3, v6, v7, v5, v4}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    aput-object v3, v1, v4

    const/16 v3, 0x1a

    aput-boolean v4, v0, v3

    .line 33
    new-instance v3, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "twitter"

    const-string v7, "twitter.com"

    invoke-direct {v3, v6, v7, v5, v4}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const/16 v3, 0x1b

    aput-boolean v4, v0, v3

    .line 34
    new-instance v3, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    const/16 v5, 0xe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "amazon.com"

    invoke-direct {v3, v6, v6, v5, v4}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    const/4 v5, 0x3

    aput-object v3, v1, v5

    const/16 v3, 0x1c

    aput-boolean v4, v0, v3

    .line 35
    new-instance v3, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    const-string v5, "appnexus"

    const-string v6, "appnexus.com"

    invoke-direct {v3, v5, v6, v2, v4}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    const/4 v5, 0x4

    aput-object v3, v1, v5

    const/16 v3, 0x1d

    aput-boolean v4, v0, v3

    .line 36
    new-instance v3, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    const-string v5, "oracle"

    const-string v6, "oracle.com"

    invoke-direct {v3, v5, v6, v2, v4}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    const/4 v2, 0x5

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    aput-boolean v4, v0, v2

    .line 37
    new-instance v2, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "mediamath"

    const-string v7, "mediamath.com"

    invoke-direct {v2, v6, v7, v5, v4}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    const/4 v6, 0x6

    aput-object v2, v1, v6

    const/16 v2, 0x1f

    aput-boolean v4, v0, v2

    .line 38
    new-instance v2, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    const-string v6, "yahoo"

    const-string v7, "yahoo.com"

    invoke-direct {v2, v6, v7, v5, v4}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    const/4 v5, 0x7

    .line 39
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 38
    aput-object v2, v1, v5

    const/16 v2, 0x20

    aput-boolean v4, v0, v2

    .line 39
    new-instance v2, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    const-string v5, "stackpath"

    const-string v7, "stackpath.com"

    invoke-direct {v2, v5, v7, v6, v4}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    const/16 v5, 0x8

    aput-object v2, v1, v5

    const/16 v2, 0x21

    aput-boolean v4, v0, v2

    .line 40
    new-instance v2, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    const-string v5, "automattic"

    const-string v7, "automattic.com"

    invoke-direct {v2, v5, v7, v6, v4}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    aput-object v2, v1, v3

    .line 30
    sput-object v1, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;->majorNetworks:[Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    const/16 v1, 0x22

    aput-boolean v4, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;->$jacocoInit()[Z

    move-result-object v0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x16

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;->data:Ljava/util/List;

    const/16 v1, 0x17

    aput-boolean v2, v0, v1

    return-void
.end method

.method private final majorNetwork(Ljava/lang/String;)Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;
    .locals 9
    .param p1, "networkName"    # Ljava/lang/String;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    sget-object v1, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;->majorNetworks:[Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    array-length v2, v1

    const/16 v3, 0x10

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    move-object v6, v5

    .local v6, "it":Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;
    const/4 v7, 0x0

    .local v7, "$i$a$-find-TrackerNetworks$majorNetwork$1":I
    const/16 v8, 0x11

    aput-boolean v4, v0, v8

    invoke-virtual {v6}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .end local v6    # "it":Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;
    .end local v7    # "$i$a$-find-TrackerNetworks$majorNetwork$1":I
    if-eqz v6, :cond_0

    const/16 v1, 0x12

    aput-boolean v4, v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x13

    aput-boolean v4, v0, v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    const/16 v1, 0x14

    aput-boolean v4, v0, v1

    :goto_1
    const/16 v1, 0x15

    aput-boolean v4, v0, v1

    return-object v5
.end method


# virtual methods
.method public final network(Ljava/lang/String;)Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    aput-boolean v1, v0, v1

    .line 51
    iget-object v2, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;->data:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x2

    aput-boolean v1, v0, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;

    .local v5, "it":Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;
    const/4 v6, 0x0

    .local v6, "$i$a$-find-TrackerNetworks$network$entry$1":I
    const/4 v7, 0x3

    aput-boolean v1, v0, v7

    sget-object v7, Lcom/duckduckgo/app/global/UriString;->Companion:Lcom/duckduckgo/app/global/UriString$Companion;

    invoke-virtual {v5}, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lcom/duckduckgo/app/global/UriString$Companion;->sameOrSubdomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    aput-boolean v1, v0, v7

    goto :goto_1

    :cond_0
    sget-object v7, Lcom/duckduckgo/app/global/UriString;->Companion:Lcom/duckduckgo/app/global/UriString$Companion;

    invoke-virtual {v5}, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->getNetworkUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lcom/duckduckgo/app/global/UriString$Companion;->sameOrSubdomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x5

    aput-boolean v1, v0, v7

    :goto_1
    const/4 v7, 0x6

    aput-boolean v1, v0, v7

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x7

    aput-boolean v1, v0, v8

    .end local v5    # "it":Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;
    .end local v6    # "$i$a$-find-TrackerNetworks$network$entry$1":I
    :goto_2
    if-nez v7, :cond_2

    const/16 v3, 0x8

    aput-boolean v1, v0, v3

    goto :goto_0

    :cond_2
    const/16 v2, 0x9

    aput-boolean v1, v0, v2

    goto :goto_3

    :cond_3
    const/16 v2, 0xa

    aput-boolean v1, v0, v2

    move-object v3, v4

    :goto_3
    check-cast v3, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;

    if-eqz v3, :cond_5

    const/16 v2, 0xc

    aput-boolean v1, v0, v2

    move-object v2, v3

    .line 52
    .local v2, "entry":Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;
    invoke-virtual {v2}, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;->majorNetwork(Ljava/lang/String;)Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    move-result-object v3

    if-eqz v3, :cond_4

    const/16 v4, 0xd

    aput-boolean v1, v0, v4

    goto :goto_4

    :cond_4
    new-instance v3, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    invoke-virtual {v2}, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->getNetworkName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;->getNetworkUrl()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v11, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v4, 0xe

    aput-boolean v1, v0, v4

    :goto_4
    const/16 v4, 0xf

    aput-boolean v1, v0, v4

    return-object v3

    .line 51
    .end local v2    # "entry":Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;
    :cond_5
    const/16 v2, 0xb

    aput-boolean v1, v0, v2

    return-object v4
.end method

.method public final updateData(Ljava/util/List;)V
    .locals 3
    .param p1, "trackers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/duckduckgo/app/trackerdetection/model/DisconnectTracker;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "trackers"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;->data:Ljava/util/List;

    .line 48
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
