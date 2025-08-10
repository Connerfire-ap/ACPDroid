.class final Lcom/duckduckgo/app/browser/BrowserActivity$onCreate$3;
.super Ljava/lang/Object;
.source "BrowserActivity.kt"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duckduckgo/app/browser/BrowserActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/duckduckgo/app/browser/BrowserViewModel$NavigationCommand;",
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
        "Lcom/duckduckgo/app/browser/BrowserViewModel$NavigationCommand;",
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
.field final synthetic this$0:Lcom/duckduckgo/app/browser/BrowserActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/browser/BrowserActivity$onCreate$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x63ce8147b2041032L    # -7.073533888759001E-173

    const/4 v2, 0x6

    const-string v3, "com/duckduckgo/app/browser/BrowserActivity$onCreate$3"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/browser/BrowserActivity$onCreate$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/duckduckgo/app/browser/BrowserActivity;)V
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserActivity$onCreate$3;->$jacocoInit()[Z

    move-result-object v0

    iput-object p1, p0, Lcom/duckduckgo/app/browser/BrowserActivity$onCreate$3;->this$0:Lcom/duckduckgo/app/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x5

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/duckduckgo/app/browser/BrowserViewModel$NavigationCommand;)V
    .locals 3
    .param p1, "it"    # Lcom/duckduckgo/app/browser/BrowserViewModel$NavigationCommand;

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserActivity$onCreate$3;->$jacocoInit()[Z

    move-result-object v0

    .line 79
    sget-object v1, Lcom/duckduckgo/app/browser/BrowserViewModel$NavigationCommand;->LANDING_PAGE:Lcom/duckduckgo/app/browser/BrowserViewModel$NavigationCommand;

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    aput-boolean v2, v0, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 80
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserActivity$onCreate$3;->this$0:Lcom/duckduckgo/app/browser/BrowserActivity;

    invoke-static {v1}, Lcom/duckduckgo/app/browser/BrowserActivity;->access$finishActivityAnimated(Lcom/duckduckgo/app/browser/BrowserActivity;)V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 82
    :goto_0
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserActivity$onCreate$3;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    check-cast p1, Lcom/duckduckgo/app/browser/BrowserViewModel$NavigationCommand;

    invoke-virtual {p0, p1}, Lcom/duckduckgo/app/browser/BrowserActivity$onCreate$3;->onChanged(Lcom/duckduckgo/app/browser/BrowserViewModel$NavigationCommand;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method
