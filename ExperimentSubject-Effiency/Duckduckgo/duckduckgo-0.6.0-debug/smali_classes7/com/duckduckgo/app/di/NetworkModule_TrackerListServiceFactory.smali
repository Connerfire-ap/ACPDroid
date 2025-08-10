.class public final Lcom/duckduckgo/app/di/NetworkModule_TrackerListServiceFactory;
.super Ljava/lang/Object;
.source "NetworkModule_TrackerListServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;",
        ">;"
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field private final module:Lcom/duckduckgo/app/di/NetworkModule;

.field private final retrofitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/di/NetworkModule_TrackerListServiceFactory;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x29e145b05818ff01L    # 5.88355422621415E-107

    const/4 v2, 0x6

    const-string v3, "com/duckduckgo/app/di/NetworkModule_TrackerListServiceFactory"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/di/NetworkModule_TrackerListServiceFactory;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/duckduckgo/app/di/NetworkModule;Ljavax/inject/Provider;)V
    .locals 3
    .param p1, "module"    # Lcom/duckduckgo/app/di/NetworkModule;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "module",
            "retrofitProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/duckduckgo/app/di/NetworkModule;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;)V"
        }
    .end annotation

    .local p2, "retrofitProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lretrofit2/Retrofit;>;"
    invoke-static {}, Lcom/duckduckgo/app/di/NetworkModule_TrackerListServiceFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/duckduckgo/app/di/NetworkModule_TrackerListServiceFactory;->module:Lcom/duckduckgo/app/di/NetworkModule;

    .line 18
    iput-object p2, p0, Lcom/duckduckgo/app/di/NetworkModule_TrackerListServiceFactory;->retrofitProvider:Ljavax/inject/Provider;

    .line 19
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static create(Lcom/duckduckgo/app/di/NetworkModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 4
    .param p0, "module"    # Lcom/duckduckgo/app/di/NetworkModule;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "module",
            "retrofitProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/duckduckgo/app/di/NetworkModule;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;",
            ">;"
        }
    .end annotation

    .local p1, "retrofitProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lretrofit2/Retrofit;>;"
    invoke-static {}, Lcom/duckduckgo/app/di/NetworkModule_TrackerListServiceFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    new-instance v1, Lcom/duckduckgo/app/di/NetworkModule_TrackerListServiceFactory;

    invoke-direct {v1, p0, p1}, Lcom/duckduckgo/app/di/NetworkModule_TrackerListServiceFactory;-><init>(Lcom/duckduckgo/app/di/NetworkModule;Ljavax/inject/Provider;)V

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public get()Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/di/NetworkModule_TrackerListServiceFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/duckduckgo/app/di/NetworkModule_TrackerListServiceFactory;->module:Lcom/duckduckgo/app/di/NetworkModule;

    iget-object v2, p0, Lcom/duckduckgo/app/di/NetworkModule_TrackerListServiceFactory;->retrofitProvider:Ljavax/inject/Provider;

    const/4 v3, 0x1

    aput-boolean v3, v0, v3

    .line 24
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lretrofit2/Retrofit;

    invoke-virtual {v1, v2}, Lcom/duckduckgo/app/di/NetworkModule;->trackerListService(Lretrofit2/Retrofit;)Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;

    move-result-object v1

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    .line 23
    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;

    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/di/NetworkModule_TrackerListServiceFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/duckduckgo/app/di/NetworkModule_TrackerListServiceFactory;->get()Lcom/duckduckgo/app/trackerdetection/api/TrackerListService;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
