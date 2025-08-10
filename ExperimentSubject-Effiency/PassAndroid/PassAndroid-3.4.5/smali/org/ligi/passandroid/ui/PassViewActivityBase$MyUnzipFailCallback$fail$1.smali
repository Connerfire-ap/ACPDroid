.class final Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipFailCallback$fail$1;
.super Ljava/lang/Object;
.source "PassViewActivityBase.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipFailCallback;->fail(Ljava/lang/String;)V
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

.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipFailCallback;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipFailCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipFailCallback$fail$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipFailCallback;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipFailCallback$fail$1;->$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipFailCallback$fail$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipFailCallback;

    iget-object v0, v0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipFailCallback;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase;

    invoke-virtual {v0}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipFailCallback$fail$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipFailCallback;

    # getter for: Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipFailCallback;->dlg:Landroid/app/Dialog;
    invoke-static {v0}, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipFailCallback;->access$getDlg$p(Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipFailCallback;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 215
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipFailCallback$fail$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipFailCallback;

    iget-object v0, v0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipFailCallback;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not update pass :( "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$MyUnzipFailCallback$fail$1;->$reason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 216
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 219
    :cond_0
    return-void
.end method
