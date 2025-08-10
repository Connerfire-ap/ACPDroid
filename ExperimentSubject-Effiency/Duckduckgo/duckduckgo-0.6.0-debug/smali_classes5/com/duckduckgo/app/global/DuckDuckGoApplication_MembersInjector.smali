.class public final Lcom/duckduckgo/app/global/DuckDuckGoApplication_MembersInjector;
.super Ljava/lang/Object;
.source "DuckDuckGoApplication_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/duckduckgo/app/global/DuckDuckGoApplication;",
        ">;"
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field private final crashReportingInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/global/CrashReportingInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private final injectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private final trackerDataLoaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/global/DuckDuckGoApplication_MembersInjector;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x10e924cf2333b2e7L    # -1.3536333569585337E227

    const/16 v2, 0x9

    const-string v3, "com/duckduckgo/app/global/DuckDuckGoApplication_MembersInjector"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/global/DuckDuckGoApplication_MembersInjector;->$jacocoData:[Z

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
            "injectorProvider",
            "crashReportingInitializerProvider",
            "trackerDataLoaderProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Activity;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/global/CrashReportingInitializer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;",
            ">;)V"
        }
    .end annotation

    .local p1, "injectorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ldagger/android/DispatchingAndroidInjector<Landroid/app/Activity;>;>;"
    .local p2, "crashReportingInitializerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/global/CrashReportingInitializer;>;"
    .local p3, "trackerDataLoaderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;>;"
    invoke-static {}, Lcom/duckduckgo/app/global/DuckDuckGoApplication_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/duckduckgo/app/global/DuckDuckGoApplication_MembersInjector;->injectorProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/duckduckgo/app/global/DuckDuckGoApplication_MembersInjector;->crashReportingInitializerProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p3, p0, Lcom/duckduckgo/app/global/DuckDuckGoApplication_MembersInjector;->trackerDataLoaderProvider:Ljavax/inject/Provider;

    .line 25
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "injectorProvider",
            "crashReportingInitializerProvider",
            "trackerDataLoaderProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Activity;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/global/CrashReportingInitializer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/duckduckgo/app/global/DuckDuckGoApplication;",
            ">;"
        }
    .end annotation

    .local p0, "injectorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ldagger/android/DispatchingAndroidInjector<Landroid/app/Activity;>;>;"
    .local p1, "crashReportingInitializerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/global/CrashReportingInitializer;>;"
    .local p2, "trackerDataLoaderProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;>;"
    invoke-static {}, Lcom/duckduckgo/app/global/DuckDuckGoApplication_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    new-instance v1, Lcom/duckduckgo/app/global/DuckDuckGoApplication_MembersInjector;

    invoke-direct {v1, p0, p1, p2}, Lcom/duckduckgo/app/global/DuckDuckGoApplication_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    const/4 v2, 0x1

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public static injectCrashReportingInitializer(Lcom/duckduckgo/app/global/DuckDuckGoApplication;Lcom/duckduckgo/app/global/CrashReportingInitializer;)V
    .locals 3
    .param p0, "instance"    # Lcom/duckduckgo/app/global/DuckDuckGoApplication;
    .param p1, "crashReportingInitializer"    # Lcom/duckduckgo/app/global/CrashReportingInitializer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "crashReportingInitializer"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/global/DuckDuckGoApplication_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 49
    iput-object p1, p0, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->crashReportingInitializer:Lcom/duckduckgo/app/global/CrashReportingInitializer;

    .line 50
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static injectInjector(Lcom/duckduckgo/app/global/DuckDuckGoApplication;Ldagger/android/DispatchingAndroidInjector;)V
    .locals 3
    .param p0, "instance"    # Lcom/duckduckgo/app/global/DuckDuckGoApplication;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "injector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/duckduckgo/app/global/DuckDuckGoApplication;",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .local p1, "injector":Ldagger/android/DispatchingAndroidInjector;, "Ldagger/android/DispatchingAndroidInjector<Landroid/app/Activity;>;"
    invoke-static {}, Lcom/duckduckgo/app/global/DuckDuckGoApplication_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    iput-object p1, p0, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->injector:Ldagger/android/DispatchingAndroidInjector;

    .line 45
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static injectTrackerDataLoader(Lcom/duckduckgo/app/global/DuckDuckGoApplication;Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;)V
    .locals 3
    .param p0, "instance"    # Lcom/duckduckgo/app/global/DuckDuckGoApplication;
    .param p1, "trackerDataLoader"    # Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "trackerDataLoader"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/global/DuckDuckGoApplication_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    iput-object p1, p0, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->trackerDataLoader:Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;

    .line 55
    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/duckduckgo/app/global/DuckDuckGoApplication;)V
    .locals 3
    .param p1, "instance"    # Lcom/duckduckgo/app/global/DuckDuckGoApplication;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/global/DuckDuckGoApplication_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/duckduckgo/app/global/DuckDuckGoApplication_MembersInjector;->injectorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldagger/android/DispatchingAndroidInjector;

    invoke-static {p1, v1}, Lcom/duckduckgo/app/global/DuckDuckGoApplication_MembersInjector;->injectInjector(Lcom/duckduckgo/app/global/DuckDuckGoApplication;Ldagger/android/DispatchingAndroidInjector;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 38
    iget-object v1, p0, Lcom/duckduckgo/app/global/DuckDuckGoApplication_MembersInjector;->crashReportingInitializerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duckduckgo/app/global/CrashReportingInitializer;

    invoke-static {p1, v1}, Lcom/duckduckgo/app/global/DuckDuckGoApplication_MembersInjector;->injectCrashReportingInitializer(Lcom/duckduckgo/app/global/DuckDuckGoApplication;Lcom/duckduckgo/app/global/CrashReportingInitializer;)V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 39
    iget-object v1, p0, Lcom/duckduckgo/app/global/DuckDuckGoApplication_MembersInjector;->trackerDataLoaderProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;

    invoke-static {p1, v1}, Lcom/duckduckgo/app/global/DuckDuckGoApplication_MembersInjector;->injectTrackerDataLoader(Lcom/duckduckgo/app/global/DuckDuckGoApplication;Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;)V

    .line 40
    const/4 v1, 0x4

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

    invoke-static {}, Lcom/duckduckgo/app/global/DuckDuckGoApplication_MembersInjector;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    check-cast p1, Lcom/duckduckgo/app/global/DuckDuckGoApplication;

    invoke-virtual {p0, p1}, Lcom/duckduckgo/app/global/DuckDuckGoApplication_MembersInjector;->injectMembers(Lcom/duckduckgo/app/global/DuckDuckGoApplication;)V

    const/16 p1, 0x8

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method
