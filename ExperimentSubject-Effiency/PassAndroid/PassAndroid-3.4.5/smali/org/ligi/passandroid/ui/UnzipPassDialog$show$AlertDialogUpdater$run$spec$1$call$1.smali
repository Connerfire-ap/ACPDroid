.class final Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$1$call$1;
.super Ljava/lang/Object;
.source "UnzipPassDialog.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$1;->call(Ljava/lang/String;)V
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
.field final synthetic $uuid:Ljava/lang/String;

.field final synthetic this$0:Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$1;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$1$call$1;->this$0:Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$1;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$1$call$1;->$uuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 44
    sget-object v0, Lorg/ligi/passandroid/ui/UnzipPassDialog;->INSTANCE:Lorg/ligi/passandroid/ui/UnzipPassDialog;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$1$call$1;->this$0:Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$1;

    iget-object v1, v1, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$1;->this$0:Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;

    iget-object v1, v1, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$1$call$1;->this$0:Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$1;

    iget-object v2, v2, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$1;->this$0:Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;

    iget-object v2, v2, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;->$dialog:Landroid/app/ProgressDialog;

    const-string v3, "dialog"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    # invokes: Lorg/ligi/passandroid/ui/UnzipPassDialog;->prepareResult(Landroid/app/Activity;Landroid/app/ProgressDialog;)Z
    invoke-static {v0, v1, v2}, Lorg/ligi/passandroid/ui/UnzipPassDialog;->access$prepareResult(Lorg/ligi/passandroid/ui/UnzipPassDialog;Landroid/app/Activity;Landroid/app/ProgressDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$1$call$1;->this$0:Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$1;

    iget-object v0, v0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$1;->this$0:Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;

    # getter for: Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;->call_after_finish:Lkotlin/jvm/functions/Function1;
    invoke-static {v0}, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;->access$getCall_after_finish$p(Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object v1, p0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$1$call$1;->$uuid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
