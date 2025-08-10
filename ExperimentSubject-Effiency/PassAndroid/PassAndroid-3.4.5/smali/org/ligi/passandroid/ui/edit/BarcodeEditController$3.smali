.class final Lorg/ligi/passandroid/ui/edit/BarcodeEditController$3;
.super Lkotlin/jvm/internal/Lambda;
.source "BarcodeEditController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/edit/BarcodeEditController;-><init>(Landroid/view/View;Landroid/support/v7/app/AppCompatActivity;Lorg/ligi/passandroid/model/pass/BarCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1",
        "<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "newMessage",
        "",
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
.field final synthetic this$0:Lorg/ligi/passandroid/ui/edit/BarcodeEditController;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/edit/BarcodeEditController;)V
    .locals 1

    iput-object p1, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$3;->this$0:Lorg/ligi/passandroid/ui/edit/BarcodeEditController;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$3;->invoke(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 2
    .param p1, "newMessage"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "newMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$3;->this$0:Lorg/ligi/passandroid/ui/edit/BarcodeEditController;

    invoke-virtual {v0}, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lorg/ligi/passandroid/R$id;->messageInput:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatEditText;

    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "newMessage":Ljava/lang/String;
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$3;->this$0:Lorg/ligi/passandroid/ui/edit/BarcodeEditController;

    invoke-virtual {v0}, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->refresh()V

    .line 80
    return-void
.end method
