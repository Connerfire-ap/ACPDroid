.class final Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$2$fail$1;
.super Ljava/lang/Object;
.source "UnzipPassDialog.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$2;->fail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $reason:Ljava/lang/String;

.field final synthetic this$0:Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$2;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$2$fail$1;->this$0:Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$2;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$2$fail$1;->$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 54
    sget-object v0, Lorg/ligi/passandroid/ui/UnzipPassDialog;->INSTANCE:Lorg/ligi/passandroid/ui/UnzipPassDialog;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$2$fail$1;->this$0:Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$2;

    iget-object v1, v1, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$2;->this$0:Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;

    iget-object v1, v1, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$2$fail$1;->this$0:Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$2;

    iget-object v2, v2, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$2;->this$0:Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;

    iget-object v2, v2, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;->$dialog:Landroid/app/ProgressDialog;

    const-string v3, "dialog"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    # invokes: Lorg/ligi/passandroid/ui/UnzipPassDialog;->prepareResult(Landroid/app/Activity;Landroid/app/ProgressDialog;)Z
    invoke-static {v0, v1, v2}, Lorg/ligi/passandroid/ui/UnzipPassDialog;->access$prepareResult(Lorg/ligi/passandroid/ui/UnzipPassDialog;Landroid/app/Activity;Landroid/app/ProgressDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    sget-object v0, Lorg/ligi/passandroid/ui/UnzipPassDialog;->INSTANCE:Lorg/ligi/passandroid/ui/UnzipPassDialog;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$2$fail$1;->this$0:Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$2;

    iget-object v1, v1, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$2;->this$0:Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;

    iget-object v1, v1, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$2$fail$1;->this$0:Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$2;

    iget-object v2, v2, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$2;->this$0:Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;

    iget-object v2, v2, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;->$activity:Landroid/app/Activity;

    const v3, 0x7f070053

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "activity.getString(R.str\u2026g.invalid_passbook_title)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$2$fail$1;->$reason:Ljava/lang/String;

    # invokes: Lorg/ligi/passandroid/ui/UnzipPassDialog;->displayError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lorg/ligi/passandroid/ui/UnzipPassDialog;->access$displayError(Lorg/ligi/passandroid/ui/UnzipPassDialog;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
