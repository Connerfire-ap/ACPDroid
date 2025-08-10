.class Lcom/squareup/leakcanary/AndroidWatchExecutor$3;
.super Ljava/lang/Object;
.source "AndroidWatchExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/leakcanary/AndroidWatchExecutor;->postToBackgroundWithDelay(Lcom/squareup/leakcanary/Retryable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/AndroidWatchExecutor;

.field final synthetic val$failedAttempts:I

.field final synthetic val$retryable:Lcom/squareup/leakcanary/Retryable;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/AndroidWatchExecutor;Lcom/squareup/leakcanary/Retryable;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/squareup/leakcanary/AndroidWatchExecutor;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor$3;->this$0:Lcom/squareup/leakcanary/AndroidWatchExecutor;

    iput-object p2, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor$3;->val$retryable:Lcom/squareup/leakcanary/Retryable;

    iput p3, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor$3;->val$failedAttempts:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 79
    iget-object v1, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor$3;->val$retryable:Lcom/squareup/leakcanary/Retryable;

    invoke-interface {v1}, Lcom/squareup/leakcanary/Retryable;->run()Lcom/squareup/leakcanary/Retryable$Result;

    move-result-object v0

    .line 80
    .local v0, "result":Lcom/squareup/leakcanary/Retryable$Result;
    sget-object v1, Lcom/squareup/leakcanary/Retryable$Result;->RETRY:Lcom/squareup/leakcanary/Retryable$Result;

    if-ne v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor$3;->this$0:Lcom/squareup/leakcanary/AndroidWatchExecutor;

    iget-object v2, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor$3;->val$retryable:Lcom/squareup/leakcanary/Retryable;

    iget v3, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor$3;->val$failedAttempts:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/squareup/leakcanary/AndroidWatchExecutor;->postWaitForIdle(Lcom/squareup/leakcanary/Retryable;I)V

    .line 83
    :cond_0
    return-void
.end method
