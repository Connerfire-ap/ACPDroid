.class public final Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity_MembersInjector;
.super Ljava/lang/Object;
.source "PrivacyDashboardActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;",
        ">;"
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field private final repositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final viewModelFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/global/ViewModelFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity_MembersInjector;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x73ad2194c7abdb86L    # 1.6294628192273119E249

    const/4 v2, 0x7

    const-string v3, "com/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity_MembersInjector"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity_MembersInjector;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewModelFactoryProvider",
            "repositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/global/ViewModelFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;",
            ">;)V"
        }
    .end annotation

    .local p1, "viewModelFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/global/ViewModelFactory;>;"
    .local p2, "repositoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;>;"
    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity_MembersInjector;->viewModelFactoryProvider:Ljavax/inject/Provider;

    .line 19
    iput-object p2, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity_MembersInjector;->repositoryProvider:Ljavax/inject/Provider;

    .line 20
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewModelFactoryProvider",
            "repositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/global/ViewModelFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;",
            ">;"
        }
    .end annotation

    .local p0, "viewModelFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/global/ViewModelFactory;>;"
    .local p1, "repositoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;>;"
    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    new-instance v1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity_MembersInjector;

    invoke-direct {v1, p0, p1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    const/4 v2, 0x1

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public static injectRepository(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;)V
    .locals 3
    .param p0, "instance"    # Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;
    .param p1, "repository"    # Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "repository"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 42
    iput-object p1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->repository:Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;

    .line 43
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static injectViewModelFactory(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;Lcom/duckduckgo/app/global/ViewModelFactory;)V
    .locals 3
    .param p0, "instance"    # Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;
    .param p1, "viewModelFactory"    # Lcom/duckduckgo/app/global/ViewModelFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "viewModelFactory"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    iput-object p1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->viewModelFactory:Lcom/duckduckgo/app/global/ViewModelFactory;

    .line 38
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;)V
    .locals 3
    .param p1, "instance"    # Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity_MembersInjector;->viewModelFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duckduckgo/app/global/ViewModelFactory;

    invoke-static {p1, v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity_MembersInjector;->injectViewModelFactory(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;Lcom/duckduckgo/app/global/ViewModelFactory;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 32
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity_MembersInjector;->repositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;

    invoke-static {p1, v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity_MembersInjector;->injectRepository(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;)V

    .line 33
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "instance"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    check-cast p1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;

    invoke-virtual {p0, p1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity_MembersInjector;->injectMembers(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;)V

    const/4 p1, 0x6

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method
