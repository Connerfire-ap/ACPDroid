.class final Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1$1;
.super Ljava/lang/Object;
.source "PassExportTaskAndShare.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;->run()V
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
.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1$1;->this$0:Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 29
    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1$1;->this$0:Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;

    iget-object v2, v2, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;->this$0:Lorg/ligi/passandroid/ui/PassExportTaskAndShare;

    invoke-virtual {v2}, Lorg/ligi/passandroid/ui/PassExportTaskAndShare;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1$1;->this$0:Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;

    iget-object v2, v2, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;->$progress_dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1$1;->this$0:Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;

    iget-object v2, v2, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;->$progress_dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 33
    :cond_0
    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1$1;->this$0:Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;

    iget-object v2, v2, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;->$passExporter:Lorg/ligi/passandroid/ui/PassExporter;

    invoke-virtual {v2}, Lorg/ligi/passandroid/ui/PassExporter;->getException()Ljava/lang/Exception;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 34
    sget-object v2, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v2}, Lorg/ligi/passandroid/App$Companion;->getTracker()Lorg/ligi/passandroid/Tracker;

    move-result-object v3

    const-string v4, "passExporterException"

    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1$1;->this$0:Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;

    iget-object v2, v2, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;->$passExporter:Lorg/ligi/passandroid/ui/PassExporter;

    invoke-virtual {v2}, Lorg/ligi/passandroid/ui/PassExporter;->getException()Ljava/lang/Exception;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v5}, Lorg/ligi/passandroid/Tracker;->trackException(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 35
    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1$1;->this$0:Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;

    iget-object v2, v2, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;->this$0:Lorg/ligi/passandroid/ui/PassExportTaskAndShare;

    invoke-virtual {v2}, Lorg/ligi/passandroid/ui/PassExportTaskAndShare;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not export pass "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1$1;->this$0:Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;

    iget-object v4, v4, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;->$passExporter:Lorg/ligi/passandroid/ui/PassExporter;

    invoke-virtual {v4}, Lorg/ligi/passandroid/ui/PassExporter;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 43
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1$1;->this$0:Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;

    iget-object v2, v2, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;->this$0:Lorg/ligi/passandroid/ui/PassExportTaskAndShare;

    invoke-virtual {v2}, Lorg/ligi/passandroid/ui/PassExportTaskAndShare;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1$1;->this$0:Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;

    iget-object v3, v3, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;->this$0:Lorg/ligi/passandroid/ui/PassExportTaskAndShare;

    invoke-virtual {v3}, Lorg/ligi/passandroid/ui/PassExportTaskAndShare;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0700b9

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1$1;->this$0:Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;

    iget-object v4, v4, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;->$file:Ljava/io/File;

    invoke-static {v2, v3, v4}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 38
    .local v1, "uriForFile":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "it":Landroid/content/Intent;
    const-string v2, "android.intent.extra.SUBJECT"

    iget-object v3, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1$1;->this$0:Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;

    iget-object v3, v3, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;->this$0:Lorg/ligi/passandroid/ui/PassExportTaskAndShare;

    invoke-virtual {v3}, Lorg/ligi/passandroid/ui/PassExportTaskAndShare;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f070089

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v2, "android.intent.extra.STREAM"

    check-cast v1, Landroid/os/Parcelable;

    .end local v1    # "uriForFile":Landroid/net/Uri;
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 41
    const-string v2, "application/vnd.espass-espass"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1$1;->this$0:Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;

    iget-object v2, v2, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;->this$0:Lorg/ligi/passandroid/ui/PassExportTaskAndShare;

    invoke-virtual {v2}, Lorg/ligi/passandroid/ui/PassExportTaskAndShare;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1$1;->this$0:Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;

    iget-object v2, v2, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;->this$0:Lorg/ligi/passandroid/ui/PassExportTaskAndShare;

    invoke-virtual {v2}, Lorg/ligi/passandroid/ui/PassExportTaskAndShare;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f07008a

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
