.class final Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$onCreate$2;
.super Ljava/lang/Object;
.source "PrivacyDashboardActivity.kt"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer<",
        "Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$onCreate$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x16305184899abc7dL    # 8.327626714704443E-202

    const/4 v2, 0x3

    const-string v3, "com/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$onCreate$2"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$onCreate$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;)V
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$onCreate$2;->$jacocoInit()[Z

    move-result-object v0

    iput-object p1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$onCreate$2;->this$0:Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)V
    .locals 2
    .param p1, "it"    # Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$onCreate$2;->$jacocoInit()[Z

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$onCreate$2;->this$0:Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;

    invoke-static {v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->access$getViewModel$p(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;)Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->onPrivacyMonitorChanged(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)V

    .line 65
    const/4 v1, 0x1

    aput-boolean v1, v0, v1

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$onCreate$2;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    check-cast p1, Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;

    invoke-virtual {p0, p1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$onCreate$2;->onChanged(Lcom/duckduckgo/app/privacymonitor/PrivacyMonitor;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method
