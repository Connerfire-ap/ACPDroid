.class final Lorg/ligi/passandroid/ui/PassEditActivity$prepareImageUI$listener$1;
.super Ljava/lang/Object;
.source "PassEditActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassEditActivity;->prepareImageUI(III)V
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
.field final synthetic $requestCode:I

.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassEditActivity;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/PassEditActivity;I)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassEditActivity$prepareImageUI$listener$1;->this$0:Lorg/ligi/passandroid/ui/PassEditActivity;

    iput p2, p0, Lorg/ligi/passandroid/ui/PassEditActivity$prepareImageUI$listener$1;->$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassEditActivity$prepareImageUI$listener$1;->this$0:Lorg/ligi/passandroid/ui/PassEditActivity;

    iget v1, p0, Lorg/ligi/passandroid/ui/PassEditActivity$prepareImageUI$listener$1;->$requestCode:I

    invoke-static {v0, v1}, Lorg/ligi/passandroid/ui/PassEditActivityPermissionsDispatcher;->pickImageWithCheck(Lorg/ligi/passandroid/ui/PassEditActivity;I)V

    .line 134
    return-void
.end method
