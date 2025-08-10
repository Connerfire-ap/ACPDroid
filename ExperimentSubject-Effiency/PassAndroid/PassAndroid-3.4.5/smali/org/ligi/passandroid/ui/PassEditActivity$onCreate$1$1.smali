.class final Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1$1;
.super Ljava/lang/Object;
.source "PassEditActivity.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1;->onClick(Landroid/view/View;)V
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "i",
        "",
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
.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1$1;->this$0:Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "$noName_0"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 58
    packed-switch p2, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1$1;->this$0:Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1;

    iget-object v0, v0, Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1;->this$0:Lorg/ligi/passandroid/ui/PassEditActivity;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1$1;->this$0:Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1;

    iget-object v1, v1, Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1;->this$0:Lorg/ligi/passandroid/ui/PassEditActivity;

    invoke-static {v1}, Lorg/ligi/passandroid/ui/PassEditActivity;->access$getCurrentPass$p(Lorg/ligi/passandroid/ui/PassEditActivity;)Lorg/ligi/passandroid/model/pass/PassImpl;

    move-result-object v1

    check-cast v1, Lorg/ligi/passandroid/model/pass/Pass;

    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1$1;->this$0:Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1;

    iget-object v2, v2, Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1;->this$0:Lorg/ligi/passandroid/ui/PassEditActivity;

    invoke-virtual {v2}, Lorg/ligi/passandroid/ui/PassEditActivity;->getBus$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/ligi/passandroid/ui/edit/dialogs/CategoryPickDialogKt;->showCategoryPickDialog(Landroid/content/Context;Lorg/ligi/passandroid/model/pass/Pass;Lorg/greenrobot/eventbus/EventBus;)V

    goto :goto_0

    .line 60
    :pswitch_1
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1$1;->this$0:Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1;

    iget-object v0, v0, Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1;->this$0:Lorg/ligi/passandroid/ui/PassEditActivity;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1$1;->this$0:Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1;

    iget-object v1, v1, Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1;->this$0:Lorg/ligi/passandroid/ui/PassEditActivity;

    invoke-static {v1}, Lorg/ligi/passandroid/ui/PassEditActivity;->access$getCurrentPass$p(Lorg/ligi/passandroid/ui/PassEditActivity;)Lorg/ligi/passandroid/model/pass/PassImpl;

    move-result-object v1

    check-cast v1, Lorg/ligi/passandroid/model/pass/Pass;

    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1$1;->this$0:Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1;

    iget-object v2, v2, Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1;->this$0:Lorg/ligi/passandroid/ui/PassEditActivity;

    invoke-virtual {v2}, Lorg/ligi/passandroid/ui/PassEditActivity;->getBus$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/ligi/passandroid/ui/edit/dialogs/ColorPickDialogKt;->showColorPickDialog(Landroid/content/Context;Lorg/ligi/passandroid/model/pass/Pass;Lorg/greenrobot/eventbus/EventBus;)V

    goto :goto_0

    .line 61
    :pswitch_2
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1$1;->this$0:Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1;

    iget-object v0, v0, Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1;->this$0:Lorg/ligi/passandroid/ui/PassEditActivity;

    sget-object v1, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->Companion:Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;->getREQ_CODE_PICK_ICON()I

    move-result v1

    invoke-static {v0, v1}, Lorg/ligi/passandroid/ui/PassEditActivityPermissionsDispatcher;->pickImageWithCheck(Lorg/ligi/passandroid/ui/PassEditActivity;I)V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
