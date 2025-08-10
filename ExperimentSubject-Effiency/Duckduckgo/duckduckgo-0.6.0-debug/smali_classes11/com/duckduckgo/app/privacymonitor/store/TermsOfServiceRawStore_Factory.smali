.class public final Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore_Factory;
.super Ljava/lang/Object;
.source "TermsOfServiceRawStore_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;",
        ">;"
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final moshiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/squareup/moshi/Moshi;",
            ">;"
        }
    .end annotation
.end field

.field private final trackerNetworksProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore_Factory;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x369c1c622827e037L    # 1.2309913381915345E-45

    const/4 v2, 0x5

    const-string v3, "com/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore_Factory"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore_Factory;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "moshiProvider",
            "contextProvider",
            "trackerNetworksProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/squareup/moshi/Moshi;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;",
            ">;)V"
        }
    .end annotation

    .local p1, "moshiProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/squareup/moshi/Moshi;>;"
    .local p2, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    .local p3, "trackerNetworksProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;>;"
    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore_Factory;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore_Factory;->moshiProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p3, p0, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore_Factory;->trackerNetworksProvider:Ljavax/inject/Provider;

    .line 24
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "moshiProvider",
            "contextProvider",
            "trackerNetworksProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/squareup/moshi/Moshi;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;",
            ">;"
        }
    .end annotation

    .local p0, "moshiProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/squareup/moshi/Moshi;>;"
    .local p1, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    .local p2, "trackerNetworksProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;>;"
    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore_Factory;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    new-instance v1, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore_Factory;

    invoke-direct {v1, p0, p1, p2}, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public get()Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;
    .locals 6

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore_Factory;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    new-instance v1, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;

    iget-object v2, p0, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore_Factory;->moshiProvider:Ljavax/inject/Provider;

    const/4 v3, 0x1

    aput-boolean v3, v0, v3

    .line 29
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/moshi/Moshi;

    iget-object v4, p0, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    iget-object v5, p0, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore_Factory;->trackerNetworksProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

    invoke-direct {v1, v2, v4, v5}, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;-><init>(Lcom/squareup/moshi/Moshi;Landroid/content/Context;Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;)V

    .line 28
    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore_Factory;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore_Factory;->get()Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
