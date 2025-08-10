.class final Lorg/ligi/passandroid/ui/PassImportActivity$progressDialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PassImportActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassImportActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0",
        "<",
        "Landroid/app/ProgressDialog;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/app/ProgressDialog;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassImportActivity;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/PassImportActivity;)V
    .locals 1

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassImportActivity$progressDialog$2;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/app/ProgressDialog;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 30
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassImportActivity$progressDialog$2;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 31
    .local v0, "$receiver":Landroid/app/ProgressDialog;
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassImportActivity$progressDialog$2;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity;

    const v2, 0x7f07008e

    invoke-virtual {v1, v2}, Lorg/ligi/passandroid/ui/PassImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 32
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 33
    nop

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassImportActivity$progressDialog$2;->invoke()Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method
