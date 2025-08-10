.class public abstract Lcom/duckduckgo/app/di/ActivityBindingModule_PrivacyDashboardActivity;
.super Ljava/lang/Object;
.source "ActivityBindingModule_PrivacyDashboardActivity.java"


# annotations
.annotation runtime Ldagger/Module;
    subcomponents = {
        Lcom/duckduckgo/app/di/ActivityBindingModule_PrivacyDashboardActivity$PrivacyDashboardActivitySubcomponent;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duckduckgo/app/di/ActivityBindingModule_PrivacyDashboardActivity$PrivacyDashboardActivitySubcomponent;
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/di/ActivityBindingModule_PrivacyDashboardActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x610fef943b1f7d70L    # 3.507730985985084E159

    const/4 v2, 0x1

    const-string v3, "com/duckduckgo/app/di/ActivityBindingModule_PrivacyDashboardActivity"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/di/ActivityBindingModule_PrivacyDashboardActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/di/ActivityBindingModule_PrivacyDashboardActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method abstract bindAndroidInjectorFactory(Lcom/duckduckgo/app/di/ActivityBindingModule_PrivacyDashboardActivity$PrivacyDashboardActivitySubcomponent$Builder;)Ldagger/android/AndroidInjector$Factory;
    .annotation runtime Ldagger/Binds;
    .end annotation

    .annotation runtime Ldagger/multibindings/IntoMap;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/duckduckgo/app/di/ActivityBindingModule_PrivacyDashboardActivity$PrivacyDashboardActivitySubcomponent$Builder;",
            ")",
            "Ldagger/android/AndroidInjector$Factory<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end method
