.class public final Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$Companion;
.super Ljava/lang/Object;
.source "PrivacyDashboardActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$Companion;",
        "",
        "()V",
        "REQUEST_DASHBOARD",
        "",
        "getREQUEST_DASHBOARD",
        "()I",
        "RESULT_RELOAD",
        "getRESULT_RELOAD",
        "intent",
        "Landroid/content/Intent;",
        "context",
        "Landroid/content/Context;",
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

    sget-object v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$Companion;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x297042516d467e06L    # -9.318120126018537E108

    const/4 v2, 0x6

    const-string v3, "com/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$Companion"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$Companion;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$Companion;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$Companion;->$jacocoInit()[Z

    move-result-object v0

    .line 44
    invoke-direct {p0}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$Companion;-><init>()V

    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public final getREQUEST_DASHBOARD()I
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$Companion;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->access$getREQUEST_DASHBOARD$cp()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public final getRESULT_RELOAD()I
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$Companion;->$jacocoInit()[Z

    move-result-object v0

    .line 47
    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->access$getRESULT_RELOAD$cp()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v2

    return v1
.end method

.method public final intent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$Companion;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 50
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x3

    aput-boolean v2, v0, v3

    return-object v1
.end method
