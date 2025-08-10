.class final Lorg/ligi/passandroid/ui/PassViewActivity$processImage$1;
.super Ljava/lang/Object;
.source "PassViewActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassViewActivity;->processImage$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug(Landroid/widget/ImageView;Ljava/lang/String;Lorg/ligi/passandroid/model/pass/Pass;)V
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
.field final synthetic $name:Ljava/lang/String;

.field final synthetic $view:Landroid/widget/ImageView;

.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassViewActivity;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/PassViewActivity;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassViewActivity$processImage$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivity;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/PassViewActivity$processImage$1;->$view:Landroid/widget/ImageView;

    iput-object p3, p0, Lorg/ligi/passandroid/ui/PassViewActivity$processImage$1;->$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassViewActivity$processImage$1;->$view:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/ligi/passandroid/ui/TouchImageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "IMAGE"

    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassViewActivity$processImage$1;->$name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassViewActivity$processImage$1;->this$0:Lorg/ligi/passandroid/ui/PassViewActivity;

    invoke-virtual {v1, v0}, Lorg/ligi/passandroid/ui/PassViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 41
    return-void
.end method
