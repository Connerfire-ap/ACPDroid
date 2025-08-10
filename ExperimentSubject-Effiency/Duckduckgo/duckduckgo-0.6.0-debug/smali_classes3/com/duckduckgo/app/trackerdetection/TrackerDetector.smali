.class public final Lcom/duckduckgo/app/trackerdetection/TrackerDetector;
.super Ljava/lang/Object;
.source "TrackerDetector.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrackerDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrackerDetector.kt\ncom/duckduckgo/app/trackerdetection/TrackerDetector\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,65:1\n1550#2,3:66\n1550#2,3:69\n*E\n*S KotlinDebug\n*F\n+ 1 TrackerDetector.kt\ncom/duckduckgo/app/trackerdetection/TrackerDetector\n*L\n39#1,3:66\n48#1,3:69\n*E\n"
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
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\tJ \u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0010H\u0002J\u000e\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u001aJ\u0018\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0010H\u0002R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/duckduckgo/app/trackerdetection/TrackerDetector;",
        "",
        "networkTrackers",
        "Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;",
        "settings",
        "Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;",
        "(Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;)V",
        "clients",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Lcom/duckduckgo/app/trackerdetection/Client;",
        "addClient",
        "",
        "client",
        "evaluate",
        "Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;",
        "url",
        "",
        "documentUrl",
        "resourceType",
        "Lcom/duckduckgo/app/trackerdetection/model/ResourceType;",
        "firstParty",
        "",
        "firstUrl",
        "secondUrl",
        "hasClient",
        "name",
        "Lcom/duckduckgo/app/trackerdetection/Client$ClientName;",
        "sameNetwork",
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
.field private final clients:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/duckduckgo/app/trackerdetection/Client;",
            ">;"
        }
    .end annotation
.end field

.field private final networkTrackers:Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

.field private final settings:Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x59e537435089b1f6L

    const/16 v2, 0x2e

    const-string v3, "com/duckduckgo/app/trackerdetection/TrackerDetector"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;)V
    .locals 3
    .param p1, "networkTrackers"    # Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;
    .param p2, "settings"    # Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "networkTrackers"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "settings"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x2b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;->networkTrackers:Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

    iput-object p2, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;->settings:Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;

    const/16 v1, 0x2c

    aput-boolean v2, v0, v1

    .line 33
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;->clients:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/16 v1, 0x2d

    aput-boolean v2, v0, v1

    return-void
.end method

.method private final firstParty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "firstUrl"    # Ljava/lang/String;
    .param p2, "secondUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;->$jacocoInit()[Z

    move-result-object v0

    .line 61
    sget-object v1, Lcom/duckduckgo/app/global/UriString;->Companion:Lcom/duckduckgo/app/global/UriString$Companion;

    invoke-virtual {v1, p1, p2}, Lcom/duckduckgo/app/global/UriString$Companion;->sameOrSubdomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/duckduckgo/app/global/UriString;->Companion:Lcom/duckduckgo/app/global/UriString$Companion;

    invoke-virtual {v1, p2, p1}, Lcom/duckduckgo/app/global/UriString$Companion;->sameOrSubdomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x21

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;->sameNetwork(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x22

    aput-boolean v2, v0, v1

    :goto_0
    const/16 v1, 0x23

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    const/16 v3, 0x24

    aput-boolean v2, v0, v3

    :goto_1
    const/16 v3, 0x25

    aput-boolean v2, v0, v3

    return v1
.end method

.method private final sameNetwork(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "firstUrl"    # Ljava/lang/String;
    .param p2, "secondUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;->$jacocoInit()[Z

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;->networkTrackers:Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

    invoke-virtual {v1, p1}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;->network(Ljava/lang/String;)Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/16 v1, 0x26

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;->networkTrackers:Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

    invoke-virtual {v1, p1}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;->network(Ljava/lang/String;)Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    move-result-object v1

    iget-object v3, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;->networkTrackers:Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

    invoke-virtual {v3, p2}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;->network(Ljava/lang/String;)Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x27

    aput-boolean v2, v0, v1

    :goto_0
    const/4 v1, 0x0

    const/16 v3, 0x29

    aput-boolean v2, v0, v3

    goto :goto_1

    :cond_1
    const/16 v1, 0x28

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    :goto_1
    const/16 v3, 0x2a

    aput-boolean v2, v0, v3

    return v1
.end method


# virtual methods
.method public final addClient(Lcom/duckduckgo/app/trackerdetection/Client;)V
    .locals 3
    .param p1, "client"    # Lcom/duckduckgo/app/trackerdetection/Client;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "client"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 36
    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;->clients:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    aput-boolean v2, v0, v2

    return-void
.end method

.method public final evaluate(Ljava/lang/String;Ljava/lang/String;Lcom/duckduckgo/app/trackerdetection/model/ResourceType;)Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "documentUrl"    # Ljava/lang/String;
    .param p3, "resourceType"    # Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "documentUrl"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "resourceType"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xe

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;->firstParty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    aput-boolean v2, v0, v1

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is a first party url"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    const/16 v1, 0x10

    aput-boolean v2, v0, v1

    return-object v3

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;->clients:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .local v5, "$i$f$any":I
    const/16 v6, 0x11

    aput-boolean v2, v0, v6

    .line 69
    instance-of v6, v1, Ljava/util/Collection;

    if-nez v6, :cond_1

    const/16 v6, 0x12

    aput-boolean v2, v0, v6

    goto :goto_0

    :cond_1
    move-object v6, v1

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    const/16 v6, 0x13

    aput-boolean v2, v0, v6

    .line 70
    :goto_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/16 v7, 0x15

    aput-boolean v2, v0, v7

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lcom/duckduckgo/app/trackerdetection/Client;

    .local v8, "it":Lcom/duckduckgo/app/trackerdetection/Client;
    const/4 v9, 0x0

    .local v9, "$i$a$-any-TrackerDetector$evaluate$matches$1":I
    const/16 v10, 0x16

    aput-boolean v2, v0, v10

    .line 48
    invoke-interface {v8, p1, p2, p3}, Lcom/duckduckgo/app/trackerdetection/Client;->matches(Ljava/lang/String;Ljava/lang/String;Lcom/duckduckgo/app/trackerdetection/model/ResourceType;)Z

    move-result v8

    .end local v8    # "it":Lcom/duckduckgo/app/trackerdetection/Client;
    .end local v9    # "$i$a$-any-TrackerDetector$evaluate$matches$1":I
    if-nez v8, :cond_2

    const/16 v8, 0x17

    aput-boolean v2, v0, v8

    goto :goto_1

    :cond_2
    const/16 v6, 0x18

    aput-boolean v2, v0, v6

    const/4 v1, 0x1

    goto :goto_2

    .line 71
    .end local v7    # "element$iv":Ljava/lang/Object;
    :cond_3
    const/16 v6, 0x19

    aput-boolean v2, v0, v6

    const/4 v1, 0x0

    goto :goto_2

    .line 69
    :cond_4
    const/16 v6, 0x14

    aput-boolean v2, v0, v6

    const/4 v1, 0x0

    .line 48
    .end local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$any":I
    :goto_2
    nop

    .line 49
    .local v1, "matches":Z
    const-string v5, " resource "

    if-eqz v1, :cond_6

    .line 50
    if-eqz v1, :cond_5

    const/16 v3, 0x1a

    aput-boolean v2, v0, v3

    const-string v3, "WAS"

    goto :goto_3

    :cond_5
    const/16 v3, 0x1b

    aput-boolean v2, v0, v3

    const-string v3, "was not"

    :goto_3
    const/16 v6, 0x1c

    aput-boolean v2, v0, v6

    .line 51
    .local v3, "matchText":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " identified as a tracker"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v4}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v4, 0x1d

    aput-boolean v2, v0, v4

    .line 52
    new-instance v4, Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;

    iget-object v5, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;->networkTrackers:Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

    invoke-virtual {v5, p1}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;->network(Ljava/lang/String;)Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;

    move-result-object v5

    iget-object v6, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;->settings:Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;

    invoke-interface {v6}, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsStore;->getPrivacyOn()Z

    move-result v6

    invoke-direct {v4, p2, p1, v5, v6}, Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/duckduckgo/app/trackerdetection/model/TrackerNetwork;Z)V

    const/16 v5, 0x1e

    aput-boolean v2, v0, v5

    return-object v4

    .line 55
    .end local v3    # "matchText":Ljava/lang/String;
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " was not identified as a tracker"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v4}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    const/16 v4, 0x1f

    aput-boolean v2, v0, v4

    return-object v3
.end method

.method public final hasClient(Lcom/duckduckgo/app/trackerdetection/Client$ClientName;)Z
    .locals 10
    .param p1, "name"    # Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "name"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;->clients:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .local v2, "$i$f$any":I
    const/4 v3, 0x2

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    .line 66
    instance-of v3, v1, Ljava/util/Collection;

    const/4 v5, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x3

    aput-boolean v4, v0, v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x4

    aput-boolean v4, v0, v3

    .line 67
    :goto_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v6, 0x6

    aput-boolean v4, v0, v6

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/duckduckgo/app/trackerdetection/Client;

    .local v7, "it":Lcom/duckduckgo/app/trackerdetection/Client;
    const/4 v8, 0x0

    .local v8, "$i$a$-any-TrackerDetector$hasClient$1":I
    const/4 v9, 0x7

    aput-boolean v4, v0, v9

    .line 39
    invoke-interface {v7}, Lcom/duckduckgo/app/trackerdetection/Client;->getName()Lcom/duckduckgo/app/trackerdetection/Client$ClientName;

    move-result-object v9

    if-ne v9, p1, :cond_1

    const/16 v9, 0x8

    aput-boolean v4, v0, v9

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/16 v9, 0x9

    aput-boolean v4, v0, v9

    const/4 v7, 0x0

    .end local v7    # "it":Lcom/duckduckgo/app/trackerdetection/Client;
    .end local v8    # "$i$a$-any-TrackerDetector$hasClient$1":I
    :goto_2
    if-nez v7, :cond_2

    const/16 v7, 0xa

    aput-boolean v4, v0, v7

    goto :goto_1

    :cond_2
    const/16 v3, 0xb

    aput-boolean v4, v0, v3

    const/4 v5, 0x1

    goto :goto_3

    .line 68
    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_3
    const/16 v3, 0xc

    aput-boolean v4, v0, v3

    goto :goto_3

    .line 66
    :cond_4
    const/4 v3, 0x5

    aput-boolean v4, v0, v3

    .line 39
    .end local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$any":I
    :goto_3
    const/16 v1, 0xd

    aput-boolean v4, v0, v1

    return v5
.end method
