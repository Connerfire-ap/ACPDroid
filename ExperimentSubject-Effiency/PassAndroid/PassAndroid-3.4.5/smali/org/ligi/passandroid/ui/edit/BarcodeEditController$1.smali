.class final Lorg/ligi/passandroid/ui/edit/BarcodeEditController$1;
.super Ljava/lang/Object;
.source "BarcodeEditController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/edit/BarcodeEditController;-><init>(Landroid/view/View;Landroid/support/v7/app/AppCompatActivity;Lorg/ligi/passandroid/model/pass/BarCode;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
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
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$1;->this$0:Lorg/ligi/passandroid/ui/edit/BarcodeEditController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$1;->this$0:Lorg/ligi/passandroid/ui/edit/BarcodeEditController;

    invoke-virtual {v0}, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lorg/ligi/passandroid/R$id;->messageInput:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatEditText;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$1;->this$0:Lorg/ligi/passandroid/ui/edit/BarcodeEditController;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->getBarcodeFormat()Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    move-result-object v1

    if-nez v1, :cond_0

    .line 61
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UUID.randomUUID().toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v1, :cond_1

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    sget-object v2, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 59
    :pswitch_0
    invoke-static {}, Lorg/ligi/passandroid/ui/edit/EANHelperKt;->getRandomEAN13()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 58
    :goto_1
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$1;->this$0:Lorg/ligi/passandroid/ui/edit/BarcodeEditController;

    invoke-virtual {v0}, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->refresh()V

    .line 64
    return-void

    .line 60
    :pswitch_1
    invoke-static {}, Lorg/ligi/passandroid/ui/edit/ITFHelperKt;->getRandomITF()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toUpperCase()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
