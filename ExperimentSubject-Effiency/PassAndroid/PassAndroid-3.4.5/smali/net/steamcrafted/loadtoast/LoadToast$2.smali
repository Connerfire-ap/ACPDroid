.class Lnet/steamcrafted/loadtoast/LoadToast$2;
.super Ljava/lang/Object;
.source "LoadToast.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/steamcrafted/loadtoast/LoadToast;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/steamcrafted/loadtoast/LoadToast;


# direct methods
.method constructor <init>(Lnet/steamcrafted/loadtoast/LoadToast;)V
    .locals 0
    .param p1, "this$0"    # Lnet/steamcrafted/loadtoast/LoadToast;

    .prologue
    .line 41
    iput-object p1, p0, Lnet/steamcrafted/loadtoast/LoadToast$2;->this$0:Lnet/steamcrafted/loadtoast/LoadToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lnet/steamcrafted/loadtoast/LoadToast$2;->this$0:Lnet/steamcrafted/loadtoast/LoadToast;

    # invokes: Lnet/steamcrafted/loadtoast/LoadToast;->checkZPosition()V
    invoke-static {v0}, Lnet/steamcrafted/loadtoast/LoadToast;->access$600(Lnet/steamcrafted/loadtoast/LoadToast;)V

    .line 45
    return-void
.end method
