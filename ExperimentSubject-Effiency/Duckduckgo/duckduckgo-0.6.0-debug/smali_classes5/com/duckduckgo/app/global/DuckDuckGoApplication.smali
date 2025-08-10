.class public final Lcom/duckduckgo/app/global/DuckDuckGoApplication;
.super Landroid/app/Application;
.source "DuckDuckGoApplication.kt"

# interfaces
.implements Ldagger/android/HasActivityInjector;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0002J\u0008\u0010\u001b\u001a\u00020\u001aH\u0002J\u0008\u0010\u001c\u001a\u00020\u001aH\u0002J\u0008\u0010\u001d\u001a\u00020\u001aH\u0002J\u0008\u0010\u001e\u001a\u00020\u001aH\u0016R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR$\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/duckduckgo/app/global/DuckDuckGoApplication;",
        "Ldagger/android/HasActivityInjector;",
        "Landroid/app/Application;",
        "()V",
        "crashReportingInitializer",
        "Lcom/duckduckgo/app/global/CrashReportingInitializer;",
        "getCrashReportingInitializer",
        "()Lcom/duckduckgo/app/global/CrashReportingInitializer;",
        "setCrashReportingInitializer",
        "(Lcom/duckduckgo/app/global/CrashReportingInitializer;)V",
        "injector",
        "Ldagger/android/DispatchingAndroidInjector;",
        "Landroid/app/Activity;",
        "getInjector",
        "()Ldagger/android/DispatchingAndroidInjector;",
        "setInjector",
        "(Ldagger/android/DispatchingAndroidInjector;)V",
        "trackerDataLoader",
        "Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;",
        "getTrackerDataLoader",
        "()Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;",
        "setTrackerDataLoader",
        "(Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;)V",
        "activityInjector",
        "Ldagger/android/AndroidInjector;",
        "configureCrashReporting",
        "",
        "configureDependencyInjection",
        "configureLogging",
        "configureTrackerData",
        "onCreate",
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
.field public crashReportingInitializer:Lcom/duckduckgo/app/global/CrashReportingInitializer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public injector:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public trackerDataLoader:Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x703fdb7debbf230cL    # 4.9459174581709604E232

    const/16 v2, 0x25

    const-string v3, "com/duckduckgo/app/global/DuckDuckGoApplication"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    const/16 v1, 0x23

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/16 v1, 0x24

    aput-boolean v2, v0, v1

    return-void
.end method

.method private final configureCrashReporting()V
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->crashReportingInitializer:Lcom/duckduckgo/app/global/CrashReportingInitializer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/16 v3, 0x1a

    aput-boolean v2, v0, v3

    goto :goto_0

    :cond_0
    const-string v3, "crashReportingInitializer"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/16 v3, 0x1b

    aput-boolean v2, v0, v3

    :goto_0
    move-object v3, p0

    check-cast v3, Landroid/app/Application;

    invoke-virtual {v1, v3}, Lcom/duckduckgo/app/global/CrashReportingInitializer;->init(Landroid/app/Application;)V

    .line 76
    const/16 v1, 0x1c

    aput-boolean v2, v0, v1

    return-void
.end method

.method private final configureDependencyInjection()V
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 67
    const-string v1, "==INS=="

    const-string v2, "configureDependencyInjection"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x15

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 68
    nop

    .line 71
    nop

    .line 68
    nop

    .line 70
    nop

    .line 68
    nop

    .line 69
    nop

    .line 68
    invoke-static {}, Lcom/duckduckgo/app/di/DaggerAppComponent;->builder()Lcom/duckduckgo/app/di/AppComponent$Builder;

    move-result-object v1

    const/16 v3, 0x16

    aput-boolean v2, v0, v3

    .line 69
    move-object v3, p0

    check-cast v3, Landroid/app/Application;

    invoke-virtual {v1, v3}, Lcom/duckduckgo/app/di/AppComponent$Builder;->application(Landroid/app/Application;)Lcom/duckduckgo/app/di/AppComponent$Builder;

    move-result-object v1

    const/16 v3, 0x17

    aput-boolean v2, v0, v3

    .line 70
    invoke-virtual {v1, p0}, Lcom/duckduckgo/app/di/AppComponent$Builder;->create(Ljava/lang/Object;)Ldagger/android/AndroidInjector;

    move-result-object v1

    const/16 v3, 0x18

    aput-boolean v2, v0, v3

    .line 71
    invoke-interface {v1, p0}, Ldagger/android/AndroidInjector;->inject(Ljava/lang/Object;)V

    .line 72
    const/16 v1, 0x19

    aput-boolean v2, v0, v1

    return-void
.end method

.method private final configureLogging()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 63
    sget-boolean v1, Lcom/duckduckgo/app/browser/BuildConfig;->DEBUG:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/16 v1, 0x12

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    new-instance v1, Ltimber/log/Timber$DebugTree;

    invoke-direct {v1}, Ltimber/log/Timber$DebugTree;-><init>()V

    check-cast v1, Ltimber/log/Timber$Tree;

    invoke-static {v1}, Ltimber/log/Timber;->plant(Ltimber/log/Timber$Tree;)V

    const/16 v1, 0x13

    aput-boolean v2, v0, v1

    .line 64
    :goto_0
    const/16 v1, 0x14

    aput-boolean v2, v0, v1

    return-void
.end method

.method private final configureTrackerData()V
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->trackerDataLoader:Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/16 v3, 0x1d

    aput-boolean v2, v0, v3

    goto :goto_0

    :cond_0
    const-string v3, "trackerDataLoader"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/16 v3, 0x1e

    aput-boolean v2, v0, v3

    :goto_0
    invoke-virtual {v1}, Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;->loadData()V

    .line 80
    const/16 v1, 0x1f

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public activityInjector()Ldagger/android/AndroidInjector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/AndroidInjector<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->injector:Ldagger/android/DispatchingAndroidInjector;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/16 v3, 0x20

    aput-boolean v2, v0, v3

    goto :goto_0

    :cond_0
    const-string v3, "injector"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/16 v3, 0x21

    aput-boolean v2, v0, v3

    :goto_0
    check-cast v1, Ldagger/android/AndroidInjector;

    const/16 v3, 0x22

    aput-boolean v2, v0, v3

    return-object v1
.end method

.method public final getCrashReportingInitializer()Lcom/duckduckgo/app/global/CrashReportingInitializer;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->crashReportingInitializer:Lcom/duckduckgo/app/global/CrashReportingInitializer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v3, 0x4

    aput-boolean v2, v0, v3

    goto :goto_0

    :cond_0
    const-string v3, "crashReportingInitializer"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-boolean v2, v0, v3

    :goto_0
    const/4 v3, 0x6

    aput-boolean v2, v0, v3

    return-object v1
.end method

.method public final getInjector()Ldagger/android/DispatchingAndroidInjector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->injector:Ldagger/android/DispatchingAndroidInjector;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    aput-boolean v2, v0, v3

    goto :goto_0

    :cond_0
    const-string v3, "injector"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    aput-boolean v2, v0, v2

    :goto_0
    const/4 v3, 0x2

    aput-boolean v2, v0, v3

    return-object v1
.end method

.method public final getTrackerDataLoader()Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->trackerDataLoader:Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/16 v3, 0x8

    aput-boolean v2, v0, v3

    goto :goto_0

    :cond_0
    const-string v3, "trackerDataLoader"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/16 v3, 0x9

    aput-boolean v2, v0, v3

    :goto_0
    const/16 v3, 0xa

    aput-boolean v2, v0, v3

    return-object v1
.end method

.method public onCreate()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->$jacocoInit()[Z

    move-result-object v0

    .line 53
    const-string v1, "==INS=="

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 54
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    .line 56
    invoke-direct {p0}, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->configureDependencyInjection()V

    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    .line 57
    invoke-direct {p0}, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->configureLogging()V

    const/16 v1, 0xf

    aput-boolean v2, v0, v1

    .line 58
    invoke-direct {p0}, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->configureCrashReporting()V

    const/16 v1, 0x10

    aput-boolean v2, v0, v1

    .line 59
    invoke-direct {p0}, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->configureTrackerData()V

    .line 60
    const/16 v1, 0x11

    aput-boolean v2, v0, v1

    return-void
.end method

.method public final setCrashReportingInitializer(Lcom/duckduckgo/app/global/CrashReportingInitializer;)V
    .locals 3
    .param p1, "<set-?>"    # Lcom/duckduckgo/app/global/CrashReportingInitializer;

    invoke-static {}, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "<set-?>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->crashReportingInitializer:Lcom/duckduckgo/app/global/CrashReportingInitializer;

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public final setInjector(Ldagger/android/DispatchingAndroidInjector;)V
    .locals 3
    .param p1, "<set-?>"    # Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "<set-?>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->injector:Ldagger/android/DispatchingAndroidInjector;

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public final setTrackerDataLoader(Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;)V
    .locals 3
    .param p1, "<set-?>"    # Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;

    invoke-static {}, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "<set-?>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/duckduckgo/app/global/DuckDuckGoApplication;->trackerDataLoader:Lcom/duckduckgo/app/trackerdetection/TrackerDataLoader;

    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
