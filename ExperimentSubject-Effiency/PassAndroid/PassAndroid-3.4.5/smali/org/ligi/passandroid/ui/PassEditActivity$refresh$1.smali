.class final Lorg/ligi/passandroid/ui/PassEditActivity$refresh$1;
.super Ljava/lang/Object;
.source "PassEditActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassEditActivity;->refresh(Lorg/ligi/passandroid/model/pass/Pass;)V
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
.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassEditActivity;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/PassEditActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassEditActivity$refresh$1;->this$0:Lorg/ligi/passandroid/ui/PassEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassEditActivity$refresh$1;->this$0:Lorg/ligi/passandroid/ui/PassEditActivity;

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassEditActivity$refresh$1;->this$0:Lorg/ligi/passandroid/ui/PassEditActivity;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/PassEditActivity;->getBus$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassEditActivity$refresh$1;->this$0:Lorg/ligi/passandroid/ui/PassEditActivity;

    invoke-static {v1}, Lorg/ligi/passandroid/ui/PassEditActivity;->access$getCurrentPass$p(Lorg/ligi/passandroid/ui/PassEditActivity;)Lorg/ligi/passandroid/model/pass/PassImpl;

    move-result-object v1

    check-cast v1, Lorg/ligi/passandroid/model/pass/Pass;

    iget-object v3, p0, Lorg/ligi/passandroid/ui/PassEditActivity$refresh$1;->this$0:Lorg/ligi/passandroid/ui/PassEditActivity;

    invoke-static {v3}, Lorg/ligi/passandroid/ui/PassEditActivity;->access$getCurrentPass$p(Lorg/ligi/passandroid/ui/PassEditActivity;)Lorg/ligi/passandroid/model/pass/PassImpl;

    move-result-object v3

    invoke-virtual {v3}, Lorg/ligi/passandroid/model/pass/PassImpl;->getBarCode()Lorg/ligi/passandroid/model/pass/BarCode;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-static {v0, v2, v1, v3}, Lorg/ligi/passandroid/ui/edit/dialogs/BarcodePickDialogKt;->showBarcodeEditDialog(Landroid/support/v7/app/AppCompatActivity;Lorg/greenrobot/eventbus/EventBus;Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/pass/BarCode;)V

    return-void
.end method
