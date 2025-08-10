.class final Lcom/duckduckgo/app/browser/BrowserActivity$onCreate$1;
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
        "Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBrowserActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BrowserActivity.kt\ncom/duckduckgo/app/browser/BrowserActivity$onCreate$1\n*L\n1#1,311:1\n*E\n"
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
        "Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;",
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

    sget-object v0, Lcom/duckduckgo/app/browser/BrowserActivity$onCreate$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4c0f936ff2fe5652L    # 2.477566323894776E58

    const/4 v2, 0x6

    const-string v3, "com/duckduckgo/app/browser/BrowserActivity$onCreate$1"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/browser/BrowserActivity$onCreate$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/duckduckgo/app/browser/BrowserActivity;)V
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserActivity$onCreate$1;->$jacocoInit()[Z

    move-result-object v0

    iput-object p1, p0, Lcom/duckduckgo/app/browser/BrowserActivity$onCreate$1;->this$0:Lcom/duckduckgo/app/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x5

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;)V
    .locals 6
    .param p1, "it"    # Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserActivity$onCreate$1;->$jacocoInit()[Z

    move-result-object v0

    .line 71
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move-object v2, p1

    .local v2, "it":Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;
    const/4 v3, 0x0

    .local v3, "$i$a$-let-BrowserActivity$onCreate$1$1":I
    aput-boolean v1, v0, v1

    iget-object v4, p0, Lcom/duckduckgo/app/browser/BrowserActivity$onCreate$1;->this$0:Lcom/duckduckgo/app/browser/BrowserActivity;

    const-string v5, "it"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v2}, Lcom/duckduckgo/app/browser/BrowserActivity;->access$render(Lcom/duckduckgo/app/browser/BrowserActivity;Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;)V

    .end local v2    # "it":Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;
    .end local v3    # "$i$a$-let-BrowserActivity$onCreate$1$1":I
    const/4 v2, 0x2

    aput-boolean v1, v0, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    aput-boolean v1, v0, v2

    .line 72
    :goto_0
    const/4 v2, 0x4

    aput-boolean v1, v0, v2

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserActivity$onCreate$1;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    check-cast p1, Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;

    invoke-virtual {p0, p1}, Lcom/duckduckgo/app/browser/BrowserActivity$onCreate$1;->onChanged(Lcom/duckduckgo/app/browser/BrowserViewModel$ViewState;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method
