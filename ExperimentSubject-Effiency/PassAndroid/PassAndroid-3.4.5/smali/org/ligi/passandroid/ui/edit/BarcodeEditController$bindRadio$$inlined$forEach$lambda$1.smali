.class final Lorg/ligi/passandroid/ui/edit/BarcodeEditController$bindRadio$$inlined$forEach$lambda$1;
.super Ljava/lang/Object;
.source "BarcodeEditController.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->bindRadio([Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;)V
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "buttonView",
        "Landroid/widget/CompoundButton;",
        "kotlin.jvm.PlatformType",
        "isChecked",
        "",
        "onCheckedChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $it:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

.field final synthetic this$0:Lorg/ligi/passandroid/ui/edit/BarcodeEditController;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;Lorg/ligi/passandroid/ui/edit/BarcodeEditController;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$bindRadio$$inlined$forEach$lambda$1;->$it:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$bindRadio$$inlined$forEach$lambda$1;->this$0:Lorg/ligi/passandroid/ui/edit/BarcodeEditController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 42
    if-eqz p2, :cond_0

    .line 43
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$bindRadio$$inlined$forEach$lambda$1;->this$0:Lorg/ligi/passandroid/ui/edit/BarcodeEditController;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$bindRadio$$inlined$forEach$lambda$1;->$it:Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->setBarcodeFormat(Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;)V

    .line 44
    iget-object v0, p0, Lorg/ligi/passandroid/ui/edit/BarcodeEditController$bindRadio$$inlined$forEach$lambda$1;->this$0:Lorg/ligi/passandroid/ui/edit/BarcodeEditController;

    invoke-virtual {v0}, Lorg/ligi/passandroid/ui/edit/BarcodeEditController;->refresh()V

    .line 46
    :cond_0
    return-void
.end method
