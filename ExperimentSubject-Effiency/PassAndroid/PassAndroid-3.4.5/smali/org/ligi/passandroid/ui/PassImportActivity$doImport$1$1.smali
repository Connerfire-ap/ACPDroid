.class final Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;
.super Ljava/lang/Object;
.source "PassImportActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;->run()V
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
.field final synthetic $fromURI:Lorg/ligi/passandroid/model/InputStreamWithSource;

.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;Lorg/ligi/passandroid/model/InputStreamWithSource;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;->$fromURI:Lorg/ligi/passandroid/model/InputStreamWithSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 63
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;

    iget-object v1, v1, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity;

    # invokes: Lorg/ligi/passandroid/ui/PassImportActivity;->getProgressDialog()Landroid/app/ProgressDialog;
    invoke-static {v1}, Lorg/ligi/passandroid/ui/PassImportActivity;->access$getProgressDialog$p(Lorg/ligi/passandroid/ui/PassImportActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    invoke-static {v1}, Lorg/ligi/kaxt/DialogExtensionsKt;->dismissIfShowing(Landroid/app/Dialog;)V

    .line 65
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;->$fromURI:Lorg/ligi/passandroid/model/InputStreamWithSource;

    if-nez v1, :cond_0

    .line 66
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;

    iget-object v1, v1, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/PassImportActivity;->finish()V

    .line 88
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;

    iget-object v1, v1, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/PassImportActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    new-instance v0, Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;->$fromURI:Lorg/ligi/passandroid/model/InputStreamWithSource;

    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;

    iget-object v2, v2, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity;

    invoke-virtual {v2}, Lorg/ligi/passandroid/ui/PassImportActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "application"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;

    iget-object v3, v3, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity;

    invoke-virtual {v3}, Lorg/ligi/passandroid/ui/PassImportActivity;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;-><init>(Lorg/ligi/passandroid/model/InputStreamWithSource;Landroid/content/Context;Lorg/ligi/passandroid/model/PassStore;Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;)V

    .line 74
    .local v0, "spec":Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;
    sget-object v1, Lorg/ligi/passandroid/ui/UnzipPassController;->INSTANCE:Lorg/ligi/passandroid/ui/UnzipPassController;

    invoke-virtual {v1, v0}, Lorg/ligi/passandroid/ui/UnzipPassController;->processInputStream(Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;)V

    goto :goto_0

    .line 76
    .end local v0    # "spec":Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;
    :cond_1
    sget-object v3, Lorg/ligi/passandroid/ui/UnzipPassDialog;->INSTANCE:Lorg/ligi/passandroid/ui/UnzipPassDialog;

    iget-object v4, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;->$fromURI:Lorg/ligi/passandroid/model/InputStreamWithSource;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;

    iget-object v1, v1, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;

    iget-object v2, v2, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity;

    invoke-virtual {v2}, Lorg/ligi/passandroid/ui/PassImportActivity;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v5

    new-instance v2, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1$1;

    invoke-direct {v2, p0}, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1$1;-><init>(Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, v4, v1, v5, v2}, Lorg/ligi/passandroid/ui/UnzipPassDialog;->show(Lorg/ligi/passandroid/model/InputStreamWithSource;Landroid/app/Activity;Lorg/ligi/passandroid/model/PassStore;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0
.end method
