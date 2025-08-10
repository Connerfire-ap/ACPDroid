.class Lorg/ligi/snackengage/snacks/BaseSnack$1;
.super Ljava/lang/Object;
.source "BaseSnack.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/snackengage/snacks/BaseSnack;->createSnackBar(Lorg/ligi/snackengage/SnackContext;)Landroid/support/design/widget/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ligi/snackengage/snacks/BaseSnack;


# direct methods
.method constructor <init>(Lorg/ligi/snackengage/snacks/BaseSnack;)V
    .locals 0
    .param p1, "this$0"    # Lorg/ligi/snackengage/snacks/BaseSnack;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/ligi/snackengage/snacks/BaseSnack$1;->this$0:Lorg/ligi/snackengage/snacks/BaseSnack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/ligi/snackengage/snacks/BaseSnack$1;->this$0:Lorg/ligi/snackengage/snacks/BaseSnack;

    invoke-virtual {v0}, Lorg/ligi/snackengage/snacks/BaseSnack;->engage()V

    .line 68
    return-void
.end method
