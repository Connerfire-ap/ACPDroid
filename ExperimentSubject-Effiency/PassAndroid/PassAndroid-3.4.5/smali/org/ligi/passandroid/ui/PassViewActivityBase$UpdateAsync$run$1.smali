.class final Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync$run$1;
.super Ljava/lang/Object;
.source "PassViewActivityBase.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;->run()V
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
.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync$run$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 177
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync$run$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;

    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync$run$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;

    iget-object v0, v0, Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;->access$setDlg$p(Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;Landroid/app/ProgressDialog;)V

    .line 178
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync$run$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;

    invoke-static {v0}, Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;->access$getDlg$p(Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync$run$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;

    iget-object v0, v0, Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase;

    const v2, 0x7f070037

    invoke-virtual {v0, v2}, Lorg/ligi/passandroid/ui/PassViewActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync$run$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;

    invoke-static {v0}, Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;->access$getDlg$p(Lorg/ligi/passandroid/ui/PassViewActivityBase$UpdateAsync;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 180
    return-void
.end method
