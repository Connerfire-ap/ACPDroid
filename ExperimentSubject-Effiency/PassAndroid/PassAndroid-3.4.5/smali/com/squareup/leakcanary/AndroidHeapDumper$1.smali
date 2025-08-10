.class Lcom/squareup/leakcanary/AndroidHeapDumper$1;
.super Ljava/lang/Object;
.source "AndroidHeapDumper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/leakcanary/AndroidHeapDumper;->showToast(Lcom/squareup/leakcanary/internal/FutureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/AndroidHeapDumper;

.field final synthetic val$waitingForToast:Lcom/squareup/leakcanary/internal/FutureResult;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/AndroidHeapDumper;Lcom/squareup/leakcanary/internal/FutureResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/squareup/leakcanary/AndroidHeapDumper;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/squareup/leakcanary/AndroidHeapDumper$1;->this$0:Lcom/squareup/leakcanary/AndroidHeapDumper;

    iput-object p2, p0, Lcom/squareup/leakcanary/AndroidHeapDumper$1;->val$waitingForToast:Lcom/squareup/leakcanary/internal/FutureResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    new-instance v1, Landroid/widget/Toast;

    iget-object v2, p0, Lcom/squareup/leakcanary/AndroidHeapDumper$1;->this$0:Lcom/squareup/leakcanary/AndroidHeapDumper;

    iget-object v2, v2, Lcom/squareup/leakcanary/AndroidHeapDumper;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 76
    .local v1, "toast":Landroid/widget/Toast;
    const/16 v2, 0x10

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 77
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 78
    iget-object v2, p0, Lcom/squareup/leakcanary/AndroidHeapDumper$1;->this$0:Lcom/squareup/leakcanary/AndroidHeapDumper;

    iget-object v2, v2, Lcom/squareup/leakcanary/AndroidHeapDumper;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 79
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/squareup/leakcanary/R$layout;->leak_canary_heap_dump_toast:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 80
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 82
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v2

    new-instance v3, Lcom/squareup/leakcanary/AndroidHeapDumper$1$1;

    invoke-direct {v3, p0, v1}, Lcom/squareup/leakcanary/AndroidHeapDumper$1$1;-><init>(Lcom/squareup/leakcanary/AndroidHeapDumper$1;Landroid/widget/Toast;)V

    invoke-virtual {v2, v3}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 88
    return-void
.end method
