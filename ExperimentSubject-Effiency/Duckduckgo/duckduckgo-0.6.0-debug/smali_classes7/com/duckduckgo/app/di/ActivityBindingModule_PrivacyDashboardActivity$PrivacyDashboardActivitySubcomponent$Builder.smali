.class public abstract Lcom/duckduckgo/app/di/ActivityBindingModule_PrivacyDashboardActivity$PrivacyDashboardActivitySubcomponent$Builder;
.super Ldagger/android/AndroidInjector$Builder;
.source "ActivityBindingModule_PrivacyDashboardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duckduckgo/app/di/ActivityBindingModule_PrivacyDashboardActivity$PrivacyDashboardActivitySubcomponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/android/AndroidInjector$Builder<",
        "Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;",
        ">;"
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/di/ActivityBindingModule_PrivacyDashboardActivity$PrivacyDashboardActivitySubcomponent$Builder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x520728300aae8732L    # 1.439563220021017E87

    const/4 v2, 0x1

    const-string v3, "com/duckduckgo/app/di/ActivityBindingModule_PrivacyDashboardActivity$PrivacyDashboardActivitySubcomponent$Builder"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/di/ActivityBindingModule_PrivacyDashboardActivity$PrivacyDashboardActivitySubcomponent$Builder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/di/ActivityBindingModule_PrivacyDashboardActivity$PrivacyDashboardActivitySubcomponent$Builder;->$jacocoInit()[Z

    move-result-object v0

    .line 30
    invoke-direct {p0}, Ldagger/android/AndroidInjector$Builder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
