.class Lcom/squareup/leakcanary/WatchExecutor$1;
.super Ljava/lang/Object;
.source "WatchExecutor.java"

# interfaces
.implements Lcom/squareup/leakcanary/WatchExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/leakcanary/WatchExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/squareup/leakcanary/Retryable;)V
    .locals 0
    .param p1, "retryable"    # Lcom/squareup/leakcanary/Retryable;

    .prologue
    .line 10
    return-void
.end method
