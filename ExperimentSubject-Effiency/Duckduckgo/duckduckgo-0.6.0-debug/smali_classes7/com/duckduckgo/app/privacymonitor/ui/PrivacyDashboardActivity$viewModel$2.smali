.class final Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$viewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PrivacyDashboardActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;",
        "invoke"
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

    sget-object v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$viewModel$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1fc6b1dc9aeea1ecL

    const/4 v2, 0x3

    const-string v3, "com/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$viewModel$2"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$viewModel$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;)V
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$viewModel$2;->$jacocoInit()[Z

    move-result-object v0

    iput-object p1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$viewModel$2;->this$0:Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    const/4 p1, 0x2

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$viewModel$2;->$jacocoInit()[Z

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$viewModel$2;->this$0:Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;

    move-object v2, v1

    check-cast v2, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->getViewModelFactory()Lcom/duckduckgo/app/global/ViewModelFactory;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/ViewModelProvider$Factory;

    invoke-static {v2, v1}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;Landroid/arch/lifecycle/ViewModelProvider$Factory;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v1

    const-class v2, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;

    const/4 v2, 0x1

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$viewModel$2;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$viewModel$2;->invoke()Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
