.class final Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;
.super Ljava/lang/Object;
.source "PassImportActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassImportActivity;->doImport(Z)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $withPermission:Z

.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassImportActivity;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/PassImportActivity;Z)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity;

    iput-boolean p2, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;->$withPermission:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 59
    nop

    .line 60
    :try_start_0
    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity;

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity;

    invoke-virtual {v3}, Lorg/ligi/passandroid/ui/PassImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "intent"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "intent.data"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lorg/ligi/passandroid/functions/InputStreamProviderKt;->fromURI(Landroid/content/Context;Landroid/net/Uri;)Lorg/ligi/passandroid/model/InputStreamWithSource;

    move-result-object v1

    .line 62
    .local v1, "fromURI":Lorg/ligi/passandroid/model/InputStreamWithSource;
    iget-object v3, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity;

    new-instance v2, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;

    invoke-direct {v2, p0, v1}, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1$1;-><init>(Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;Lorg/ligi/passandroid/model/InputStreamWithSource;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v3, v2}, Lorg/ligi/passandroid/ui/PassImportActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1    # "fromURI":Lorg/ligi/passandroid/model/InputStreamWithSource;
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "Permission"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v6, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-ne v2, v7, :cond_0

    iget-boolean v2, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;->$withPermission:Z

    if-nez v2, :cond_0

    .line 93
    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity;

    invoke-static {v2, v7}, Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher;->doImportWithCheck(Lorg/ligi/passandroid/ui/PassImportActivity;Z)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;->this$0:Lorg/ligi/passandroid/ui/PassImportActivity;

    invoke-virtual {v2}, Lorg/ligi/passandroid/ui/PassImportActivity;->getTracker()Lorg/ligi/passandroid/Tracker;

    move-result-object v2

    const-string v3, "Error in import"

    check-cast v0, Ljava/lang/Throwable;

    .end local v0    # "e":Ljava/lang/Exception;
    invoke-interface {v2, v3, v0, v6}, Lorg/ligi/passandroid/Tracker;->trackException(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    goto :goto_0
.end method
