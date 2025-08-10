.class Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator$1;
.super Ljava/lang/Object;
.source "BarCodeIntentIntegrator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->showDownloadDialog()Landroid/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;)V
    .locals 0
    .param p1, "this$0"    # Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;

    .prologue
    .line 351
    iput-object p1, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator$1;->this$0:Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 355
    iget-object v4, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator$1;->this$0:Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;

    # getter for: Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->targetApplications:Ljava/util/List;
    invoke-static {v4}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->access$000(Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;)Ljava/util/List;

    move-result-object v4

    const-string v5, "com.google.zxing.client.android"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 357
    const-string v2, "com.google.zxing.client.android"

    .line 362
    .local v2, "packageName":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "market://details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 363
    .local v3, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 365
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v4, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator$1;->this$0:Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;

    # getter for: Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v4}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->access$100(Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-nez v4, :cond_1

    .line 366
    iget-object v4, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator$1;->this$0:Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;

    # getter for: Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->activity:Landroid/app/Activity;
    invoke-static {v4}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->access$200(Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_1
    return-void

    .line 360
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v4, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator$1;->this$0:Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;

    # getter for: Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->targetApplications:Ljava/util/List;
    invoke-static {v4}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->access$000(Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .restart local v2    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 368
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator$1;->this$0:Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;

    # getter for: Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->fragment:Landroid/support/v4/app/Fragment;
    invoke-static {v4}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->access$100(Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 370
    :catch_0
    move-exception v0

    .line 372
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    # getter for: Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->TAG:Ljava/lang/String;
    invoke-static {}, Lorg/ligi/passandroid/ui/edit/BarCodeIntentIntegrator;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Google Play is not installed; cannot install "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
