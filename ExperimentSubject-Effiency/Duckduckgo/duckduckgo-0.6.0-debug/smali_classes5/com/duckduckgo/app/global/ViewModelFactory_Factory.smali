.class public final Lcom/duckduckgo/app/global/ViewModelFactory_Factory;
.super Ljava/lang/Object;
.source "ViewModelFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/duckduckgo/app/global/ViewModelFactory;",
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

.field private final duckDuckGoUrlDetectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;",
            ">;"
        }
    .end annotation
.end field

.field private final privacyMonitorRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final privacySettingsStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final queryUrlConverterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;",
            ">;"
        }
    .end annotation
.end field

.field private final termsOfServiceStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;",
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

    sget-object v0, Lcom/duckduckgo/app/global/ViewModelFactory_Factory;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3635bf310bf1fc1cL    # 1.487979321211863E-47

    const/16 v2, 0xb

    const-string v3, "com/duckduckgo/app/global/ViewModelFactory_Factory"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/global/ViewModelFactory_Factory;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "queryUrlConverterProvider",
            "duckDuckGoUrlDetectorProvider",
            "privacyMonitorRepositoryProvider",
            "privacySettingsStoreProvider",
            "termsOfServiceStoreProvider",
            "trackerNetworksProvider",
            "contextProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .local p1, "queryUrlConverterProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;>;"
    .local p2, "duckDuckGoUrlDetectorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;>;"
    .local p3, "privacyMonitorRepositoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;>;"
    .local p4, "privacySettingsStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;>;"
    .local p5, "termsOfServiceStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;>;"
    .local p6, "trackerNetworksProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;>;"
    .local p7, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    invoke-static {}, Lcom/duckduckgo/app/global/ViewModelFactory_Factory;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/duckduckgo/app/global/ViewModelFactory_Factory;->queryUrlConverterProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lcom/duckduckgo/app/global/ViewModelFactory_Factory;->duckDuckGoUrlDetectorProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p3, p0, Lcom/duckduckgo/app/global/ViewModelFactory_Factory;->privacyMonitorRepositoryProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p4, p0, Lcom/duckduckgo/app/global/ViewModelFactory_Factory;->privacySettingsStoreProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p5, p0, Lcom/duckduckgo/app/global/ViewModelFactory_Factory;->termsOfServiceStoreProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p6, p0, Lcom/duckduckgo/app/global/ViewModelFactory_Factory;->trackerNetworksProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p7, p0, Lcom/duckduckgo/app/global/ViewModelFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 44
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "queryUrlConverterProvider",
            "duckDuckGoUrlDetectorProvider",
            "privacyMonitorRepositoryProvider",
            "privacySettingsStoreProvider",
            "termsOfServiceStoreProvider",
            "trackerNetworksProvider",
            "contextProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/duckduckgo/app/global/ViewModelFactory;",
            ">;"
        }
    .end annotation

    .local p0, "queryUrlConverterProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;>;"
    .local p1, "duckDuckGoUrlDetectorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;>;"
    .local p2, "privacyMonitorRepositoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;>;"
    .local p3, "privacySettingsStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;>;"
    .local p4, "termsOfServiceStoreProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;>;"
    .local p5, "trackerNetworksProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;>;"
    .local p6, "contextProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/content/Context;>;"
    invoke-static {}, Lcom/duckduckgo/app/global/ViewModelFactory_Factory;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    new-instance v9, Lcom/duckduckgo/app/global/ViewModelFactory_Factory;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/duckduckgo/app/global/ViewModelFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object v9
.end method


# virtual methods
.method public get()Lcom/duckduckgo/app/global/ViewModelFactory;
    .locals 11

    invoke-static {}, Lcom/duckduckgo/app/global/ViewModelFactory_Factory;->$jacocoInit()[Z

    move-result-object v0

    .line 48
    new-instance v9, Lcom/duckduckgo/app/global/ViewModelFactory;

    iget-object v1, p0, Lcom/duckduckgo/app/global/ViewModelFactory_Factory;->queryUrlConverterProvider:Ljavax/inject/Provider;

    const/4 v10, 0x1

    aput-boolean v10, v0, v10

    .line 49
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;

    iget-object v1, p0, Lcom/duckduckgo/app/global/ViewModelFactory_Factory;->duckDuckGoUrlDetectorProvider:Ljavax/inject/Provider;

    const/4 v3, 0x2

    aput-boolean v10, v0, v3

    .line 50
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;

    iget-object v1, p0, Lcom/duckduckgo/app/global/ViewModelFactory_Factory;->privacyMonitorRepositoryProvider:Ljavax/inject/Provider;

    const/4 v4, 0x3

    aput-boolean v10, v0, v4

    .line 51
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;

    iget-object v1, p0, Lcom/duckduckgo/app/global/ViewModelFactory_Factory;->privacySettingsStoreProvider:Ljavax/inject/Provider;

    const/4 v5, 0x4

    aput-boolean v10, v0, v5

    .line 52
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;

    iget-object v1, p0, Lcom/duckduckgo/app/global/ViewModelFactory_Factory;->termsOfServiceStoreProvider:Ljavax/inject/Provider;

    const/4 v6, 0x5

    aput-boolean v10, v0, v6

    .line 53
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;

    iget-object v1, p0, Lcom/duckduckgo/app/global/ViewModelFactory_Factory;->trackerNetworksProvider:Ljavax/inject/Provider;

    const/4 v7, 0x6

    aput-boolean v10, v0, v7

    .line 54
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

    iget-object v1, p0, Lcom/duckduckgo/app/global/ViewModelFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    const/4 v8, 0x7

    aput-boolean v10, v0, v8

    .line 55
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/content/Context;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/duckduckgo/app/global/ViewModelFactory;-><init>(Lcom/duckduckgo/app/browser/omnibar/QueryUrlConverter;Lcom/duckduckgo/app/browser/DuckDuckGoUrlDetector;Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceStore;Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;Landroid/content/Context;)V

    .line 48
    const/16 v1, 0x8

    aput-boolean v10, v0, v1

    return-object v9
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/global/ViewModelFactory_Factory;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/duckduckgo/app/global/ViewModelFactory_Factory;->get()Lcom/duckduckgo/app/global/ViewModelFactory;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
