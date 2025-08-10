.class public abstract Lcom/duckduckgo/app/di/ActivityBindingModule;
.super Ljava/lang/Object;
.source "ActivityBindingModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\'J\u0008\u0010\u0005\u001a\u00020\u0006H\'\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/duckduckgo/app/di/ActivityBindingModule;",
        "",
        "()V",
        "browserActivity",
        "Lcom/duckduckgo/app/browser/BrowserActivity;",
        "privacyDashboardActivity",
        "Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;",
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


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/di/ActivityBindingModule;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x403b59a693070c48L    # 27.35019797250814

    const/4 v2, 0x1

    const-string v3, "com/duckduckgo/app/di/ActivityBindingModule"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/di/ActivityBindingModule;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/di/ActivityBindingModule;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public abstract browserActivity()Lcom/duckduckgo/app/browser/BrowserActivity;
    .annotation runtime Lcom/duckduckgo/app/di/ActivityScoped;
    .end annotation

    .annotation runtime Ldagger/android/ContributesAndroidInjector;
    .end annotation
.end method

.method public abstract privacyDashboardActivity()Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;
    .annotation runtime Lcom/duckduckgo/app/di/ActivityScoped;
    .end annotation

    .annotation runtime Ldagger/android/ContributesAndroidInjector;
    .end annotation
.end method
