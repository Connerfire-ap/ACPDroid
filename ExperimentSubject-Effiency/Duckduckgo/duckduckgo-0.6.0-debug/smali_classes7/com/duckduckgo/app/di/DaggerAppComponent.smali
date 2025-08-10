.class public final Lcom/duckduckgo/app/di/DaggerAppComponent;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lcom/duckduckgo/app/di/AppComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duckduckgo/app/di/DaggerAppComponent$PrivacyDashboardActivitySubcomponentImpl;,
        Lcom/duckduckgo/app/di/DaggerAppComponent$PrivacyDashboardActivitySubcomponentBuilder;,
        Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentImpl;,
        Lcom/duckduckgo/app/di/DaggerAppComponent$BrowserActivitySubcomponentBuilder;,
        Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field private applicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private bindContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private browserActivitySubcomponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/di/ActivityBindingModule_BrowserActivity$BrowserActivitySubcomponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private moshiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/squareup/moshi/Moshi;",
            ">;"
        }
    .end annotation
.end field

.field private networkModule:Lcom/duckduckgo/app/di/NetworkModule;

.field private okHttpClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private privacyDashboardActivitySubcomponentBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/di/ActivityBindingModule_PrivacyDashboardActivity$PrivacyDashboardActivitySubcomponent$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private privacyMonitorRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;",
            ">;"
        }
    .end annotation
.end field

.field private privacySettingsSharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private retrofitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private termsOfServiceRawStoreProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore;",
            ">;"
        }
    .end annotation
.end field

.field private trackerDetectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/trackerdetection/TrackerDetector;",
            ">;"
        }
    .end annotation
.end field

.field private trackerNetworksProvider:Ljavax/inject/Provider;
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

    sget-object v0, Lcom/duckduckgo/app/di/DaggerAppComponent;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3f3dbbd9749f001L

    const/16 v2, 0x34

    const-string v3, "com/duckduckgo/app/di/DaggerAppComponent"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/di/DaggerAppComponent;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;)V
    .locals 3
    .param p1, "builder"    # Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 78
    invoke-direct {p0, p1}, Lcom/duckduckgo/app/di/DaggerAppComponent;->initialize(Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;)V

    .line 79
    aput-boolean v2, v0, v2

    return-void
.end method

.method synthetic constructor <init>(Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;Lcom/duckduckgo/app/di/DaggerAppComponent$1;)V
    .locals 3
    .param p1, "x0"    # Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;
    .param p2, "x1"    # Lcom/duckduckgo/app/di/DaggerAppComponent$1;

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    invoke-direct {p0, p1}, Lcom/duckduckgo/app/di/DaggerAppComponent;-><init>(Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;)V

    const/16 v1, 0x2d

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$1000(Lcom/duckduckgo/app/di/DaggerAppComponent;)Ljavax/inject/Provider;
    .locals 4
    .param p0, "x0"    # Lcom/duckduckgo/app/di/DaggerAppComponent;

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->termsOfServiceRawStoreProvider:Ljavax/inject/Provider;

    const/16 v2, 0x31

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$1100(Lcom/duckduckgo/app/di/DaggerAppComponent;)Ljavax/inject/Provider;
    .locals 4
    .param p0, "x0"    # Lcom/duckduckgo/app/di/DaggerAppComponent;

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->trackerNetworksProvider:Ljavax/inject/Provider;

    const/16 v2, 0x32

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$1200(Lcom/duckduckgo/app/di/DaggerAppComponent;)Ljavax/inject/Provider;
    .locals 4
    .param p0, "x0"    # Lcom/duckduckgo/app/di/DaggerAppComponent;

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->bindContextProvider:Ljavax/inject/Provider;

    const/16 v2, 0x33

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$700(Lcom/duckduckgo/app/di/DaggerAppComponent;)Ljavax/inject/Provider;
    .locals 4
    .param p0, "x0"    # Lcom/duckduckgo/app/di/DaggerAppComponent;

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->trackerDetectorProvider:Ljavax/inject/Provider;

    const/16 v2, 0x2e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$800(Lcom/duckduckgo/app/di/DaggerAppComponent;)Ljavax/inject/Provider;
    .locals 4
    .param p0, "x0"    # Lcom/duckduckgo/app/di/DaggerAppComponent;

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->privacyMonitorRepositoryProvider:Ljavax/inject/Provider;

    const/16 v2, 0x2f

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$900(Lcom/duckduckgo/app/di/DaggerAppComponent;)Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;
    .locals 4
    .param p0, "x0"    # Lcom/duckduckgo/app/di/DaggerAppComponent;

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    invoke-direct {p0}, Lcom/duckduckgo/app/di/DaggerAppComponent;->getPrivacySettingsSharedPreferences()Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;

    move-result-object v1

    const/16 v2, 0x30

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static builder()Lcom/duckduckgo/app/di/AppComponent$Builder;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 82
    new-instance v1, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;-><init>(Lcom/duckduckgo/app/di/DaggerAppComponent$1;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getDispatchingAndroidInjectorOfActivity()Ldagger/android/DispatchingAndroidInjector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 98
    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 99
    invoke-direct {p0}, Lcom/duckduckgo/app/di/DaggerAppComponent;->getMapOfClassOfAndProviderOfFactoryOf()Ljava/util/Map;

    move-result-object v1

    const/16 v3, 0x9

    aput-boolean v2, v0, v3

    .line 98
    invoke-static {v1}, Ldagger/android/DispatchingAndroidInjector_Factory;->newDispatchingAndroidInjector(Ljava/util/Map;)Ldagger/android/DispatchingAndroidInjector;

    move-result-object v1

    const/16 v3, 0xa

    aput-boolean v2, v0, v3

    return-object v1
.end method

.method private getMapOfClassOfAndProviderOfFactoryOf()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/AndroidInjector$Factory<",
            "+",
            "Landroid/app/Activity;",
            ">;>;>;"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 87
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 89
    const/4 v1, 0x2

    invoke-static {v1}, Ldagger/internal/MapBuilder;->newMapBuilder(I)Ldagger/internal/MapBuilder;

    move-result-object v1

    const-class v3, Lcom/duckduckgo/app/browser/BrowserActivity;

    iget-object v4, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->browserActivitySubcomponentBuilderProvider:Ljavax/inject/Provider;

    const/4 v5, 0x4

    aput-boolean v2, v0, v5

    .line 90
    invoke-virtual {v1, v3, v4}, Ldagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ldagger/internal/MapBuilder;

    move-result-object v1

    const-class v3, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;

    iget-object v4, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->privacyDashboardActivitySubcomponentBuilderProvider:Ljavax/inject/Provider;

    const/4 v5, 0x5

    aput-boolean v2, v0, v5

    .line 91
    invoke-virtual {v1, v3, v4}, Ldagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ldagger/internal/MapBuilder;

    move-result-object v1

    const/4 v3, 0x6

    aput-boolean v2, v0, v3

    .line 94
    invoke-virtual {v1}, Ldagger/internal/MapBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 87
    const/4 v3, 0x7

    aput-boolean v2, v0, v3

    return-object v1
.end method

.method private getPrivacySettingsSharedPreferences()Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 121
    new-instance v1, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;

    iget-object v2, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->bindContextProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x14

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getTrackerDataLoader()Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;
    .locals 8

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 113
    new-instance v1, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;

    iget-object v2, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->trackerDetectorProvider:Ljavax/inject/Provider;

    const/16 v3, 0xf

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    .line 114
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;

    const/16 v3, 0x10

    aput-boolean v4, v0, v3

    .line 115
    invoke-direct {p0}, Lcom/duckduckgo/app/di/DaggerAppComponent;->getTrackerDataStore()Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;

    move-result-object v3

    const/16 v5, 0x11

    aput-boolean v4, v0, v5

    .line 116
    invoke-direct {p0}, Lcom/duckduckgo/app/di/DaggerAppComponent;->getTrackerListService()Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;

    move-result-object v5

    iget-object v6, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->trackerNetworksProvider:Ljavax/inject/Provider;

    const/16 v7, 0x12

    aput-boolean v4, v0, v7

    .line 117
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;-><init>(Lcom/duckduckgo/app/trackerdetection/TrackerDetector;Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks;)V

    .line 113
    const/16 v2, 0x13

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method private getTrackerDataStore()Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 103
    new-instance v1, Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;

    iget-object v2, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->bindContextProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/duckduckgo/app/trackerdetection/store/TrackerDataStore;-><init>(Landroid/content/Context;)V

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getTrackerListService()Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;
    .locals 5

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->networkModule:Lcom/duckduckgo/app/di/NetworkModule;

    iget-object v2, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->retrofitProvider:Ljavax/inject/Provider;

    const/16 v3, 0xc

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    .line 108
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lretrofit2/Retrofit;

    invoke-virtual {v1, v2}, Lcom/duckduckgo/app/di/NetworkModule;->trackerListService(Lretrofit2/Retrofit;)Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;

    move-result-object v1

    const/16 v2, 0xd

    aput-boolean v4, v0, v2

    .line 107
    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;

    const/16 v2, 0xe

    aput-boolean v4, v0, v2

    return-object v1
.end method

.method private initialize(Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;)V
    .locals 7
    .param p1, "builder"    # Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "builder"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 126
    new-instance v1, Lcom/duckduckgo/app/di/DaggerAppComponent$1;

    invoke-direct {v1, p0}, Lcom/duckduckgo/app/di/DaggerAppComponent$1;-><init>(Lcom/duckduckgo/app/di/DaggerAppComponent;)V

    iput-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->browserActivitySubcomponentBuilderProvider:Ljavax/inject/Provider;

    const/16 v1, 0x15

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 133
    new-instance v1, Lcom/duckduckgo/app/di/DaggerAppComponent$2;

    invoke-direct {v1, p0}, Lcom/duckduckgo/app/di/DaggerAppComponent$2;-><init>(Lcom/duckduckgo/app/di/DaggerAppComponent;)V

    iput-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->privacyDashboardActivitySubcomponentBuilderProvider:Ljavax/inject/Provider;

    const/16 v1, 0x16

    aput-boolean v2, v0, v1

    .line 144
    invoke-static {}, Lcom/duckduckgo/app/trackerdetection/model/TrackerNetworks_Factory;->create()Ldagger/internal/Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->trackerNetworksProvider:Ljavax/inject/Provider;

    const/16 v1, 0x17

    aput-boolean v2, v0, v1

    .line 145
    invoke-static {p1}, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->access$300(Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;)Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->applicationProvider:Ljavax/inject/Provider;

    const/16 v3, 0x18

    aput-boolean v2, v0, v3

    .line 146
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->bindContextProvider:Ljavax/inject/Provider;

    .line 147
    const/16 v3, 0x19

    aput-boolean v2, v0, v3

    .line 148
    invoke-static {v1}, Lcom/duckduckgo/app/privacymonitor/store/PrivacySettingsSharedPreferences_Factory;->create(Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v1

    iput-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->privacySettingsSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 149
    iget-object v3, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->trackerNetworksProvider:Ljavax/inject/Provider;

    const/16 v4, 0x1a

    aput-boolean v2, v0, v4

    .line 151
    invoke-static {v3, v1}, Lcom/duckduckgo/app/trackerdetection/TrackerDetector_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v1

    const/16 v3, 0x1b

    aput-boolean v2, v0, v3

    .line 150
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->trackerDetectorProvider:Ljavax/inject/Provider;

    .line 153
    const/16 v1, 0x1c

    aput-boolean v2, v0, v1

    .line 154
    invoke-static {p1}, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->access$400(Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;)Lcom/duckduckgo/app/di/NetworkModule;

    move-result-object v1

    invoke-static {v1}, Lcom/duckduckgo/app/di/NetworkModule_OkHttpClientFactory;->create(Lcom/duckduckgo/app/di/NetworkModule;)Ldagger/internal/Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->okHttpClientProvider:Ljavax/inject/Provider;

    .line 155
    const/16 v1, 0x1d

    aput-boolean v2, v0, v1

    .line 156
    invoke-static {p1}, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->access$400(Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;)Lcom/duckduckgo/app/di/NetworkModule;

    move-result-object v1

    invoke-static {v1}, Lcom/duckduckgo/app/di/NetworkModule_MoshiFactory;->create(Lcom/duckduckgo/app/di/NetworkModule;)Ldagger/internal/Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->moshiProvider:Ljavax/inject/Provider;

    .line 157
    const/16 v1, 0x1e

    aput-boolean v2, v0, v1

    .line 160
    invoke-static {p1}, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->access$400(Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;)Lcom/duckduckgo/app/di/NetworkModule;

    move-result-object v1

    iget-object v3, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->okHttpClientProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->moshiProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->bindContextProvider:Ljavax/inject/Provider;

    const/16 v6, 0x1f

    aput-boolean v2, v0, v6

    .line 159
    invoke-static {v1, v3, v4, v5}, Lcom/duckduckgo/app/di/NetworkModule_RetrofitFactory;->create(Lcom/duckduckgo/app/di/NetworkModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v1

    const/16 v3, 0x20

    aput-boolean v2, v0, v3

    .line 158
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->retrofitProvider:Ljavax/inject/Provider;

    const/16 v1, 0x21

    aput-boolean v2, v0, v1

    .line 161
    invoke-static {p1}, Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;->access$400(Lcom/duckduckgo/app/di/DaggerAppComponent$Builder;)Lcom/duckduckgo/app/di/NetworkModule;

    move-result-object v1

    iput-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->networkModule:Lcom/duckduckgo/app/di/NetworkModule;

    .line 162
    const/16 v1, 0x22

    aput-boolean v2, v0, v1

    .line 163
    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository_Factory;->create()Ldagger/internal/Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->privacyMonitorRepositoryProvider:Ljavax/inject/Provider;

    .line 164
    iget-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->moshiProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->bindContextProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->trackerNetworksProvider:Ljavax/inject/Provider;

    const/16 v5, 0x23

    aput-boolean v2, v0, v5

    .line 166
    invoke-static {v1, v3, v4}, Lcom/duckduckgo/app/privacymonitor/store/TermsOfServiceRawStore_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v1

    const/16 v3, 0x24

    aput-boolean v2, v0, v3

    .line 165
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, p0, Lcom/duckduckgo/app/di/DaggerAppComponent;->termsOfServiceRawStoreProvider:Ljavax/inject/Provider;

    .line 168
    const/16 v1, 0x25

    aput-boolean v2, v0, v1

    return-void
.end method

.method private injectDuckDuckGoApplication(Lcom/duckduckgo/app/global/DuckDuckGoApplication;)Lcom/duckduckgo/app/global/DuckDuckGoApplication;
    .locals 4
    .param p1, "instance"    # Lcom/duckduckgo/app/global/DuckDuckGoApplication;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 176
    const/16 v1, 0x27

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 177
    invoke-direct {p0}, Lcom/duckduckgo/app/di/DaggerAppComponent;->getDispatchingAndroidInjectorOfActivity()Ldagger/android/DispatchingAndroidInjector;

    move-result-object v1

    const/16 v3, 0x28

    aput-boolean v2, v0, v3

    .line 176
    invoke-static {p1, v1}, Lcom/duckduckgo/app/global/DuckDuckGoApplication_MembersInjector;->injectInjector(Lcom/duckduckgo/app/global/DuckDuckGoApplication;Ldagger/android/DispatchingAndroidInjector;)V

    const/16 v1, 0x29

    aput-boolean v2, v0, v1

    .line 178
    new-instance v1, Lcom/duckduckgo/app/global/CrashReportingInitializer;

    invoke-direct {v1}, Lcom/duckduckgo/app/global/CrashReportingInitializer;-><init>()V

    invoke-static {p1, v1}, Lcom/duckduckgo/app/global/DuckDuckGoApplication_MembersInjector;->injectCrashReportingInitializer(Lcom/duckduckgo/app/global/DuckDuckGoApplication;Lcom/duckduckgo/app/global/CrashReportingInitializer;)V

    const/16 v1, 0x2a

    aput-boolean v2, v0, v1

    .line 180
    invoke-direct {p0}, Lcom/duckduckgo/app/di/DaggerAppComponent;->getTrackerDataLoader()Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/duckduckgo/app/global/DuckDuckGoApplication_MembersInjector;->injectTrackerDataLoader(Lcom/duckduckgo/app/global/DuckDuckGoApplication;Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;)V

    .line 181
    const/16 v1, 0x2b

    aput-boolean v2, v0, v1

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/duckduckgo/app/global/DuckDuckGoApplication;)V
    .locals 3
    .param p1, "arg0"    # Lcom/duckduckgo/app/global/DuckDuckGoApplication;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 172
    invoke-direct {p0, p1}, Lcom/duckduckgo/app/di/DaggerAppComponent;->injectDuckDuckGoApplication(Lcom/duckduckgo/app/global/DuckDuckGoApplication;)Lcom/duckduckgo/app/global/DuckDuckGoApplication;

    .line 173
    const/16 v1, 0x26

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    check-cast p1, Lcom/duckduckgo/app/global/DuckDuckGoApplication;

    invoke-virtual {p0, p1}, Lcom/duckduckgo/app/di/DaggerAppComponent;->inject(Lcom/duckduckgo/app/global/DuckDuckGoApplication;)V

    const/16 p1, 0x2c

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method
