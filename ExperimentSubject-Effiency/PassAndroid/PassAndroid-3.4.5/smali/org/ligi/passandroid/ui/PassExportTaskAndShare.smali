.class public Lorg/ligi/passandroid/ui/PassExportTaskAndShare;
.super Ljava/lang/Object;
.source "PassExportTaskAndShare.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\u0008\u0010\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u000cH\u0007R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/PassExportTaskAndShare;",
        "",
        "activity",
        "Landroid/app/Activity;",
        "inputPath",
        "Ljava/io/File;",
        "(Landroid/app/Activity;Ljava/io/File;)V",
        "getActivity",
        "()Landroid/app/Activity;",
        "getInputPath",
        "()Ljava/io/File;",
        "execute",
        "",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final inputPath:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/io/File;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "inputPath"    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare;->inputPath:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 7
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 18
    new-instance v5, Ljava/io/File;

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "share/share.espass"

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    .local v5, "file":Ljava/io/File;
    new-instance v2, Lorg/ligi/passandroid/ui/PassExporter;

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare;->inputPath:Ljava/io/File;

    invoke-direct {v2, v0, v5}, Lorg/ligi/passandroid/ui/PassExporter;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 20
    .local v2, "passExporter":Lorg/ligi/passandroid/ui/PassExporter;
    new-instance v4, Landroid/app/ProgressDialog;

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare;->activity:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v4, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 21
    .local v4, "progress_dialog":Landroid/app/ProgressDialog;
    const v0, 0x7f070097

    invoke-virtual {v4, v0}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 22
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare;->activity:Landroid/app/Activity;

    const v1, 0x7f07008e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 25
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 26
    .local v3, "handler":Landroid/os/Handler;
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;-><init>(Lorg/ligi/passandroid/ui/PassExportTaskAndShare;Lorg/ligi/passandroid/ui/PassExporter;Landroid/os/Handler;Landroid/app/ProgressDialog;Ljava/io/File;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 45
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 46
    return-void
.end method

.method protected final getActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getInputPath()Ljava/io/File;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare;->inputPath:Ljava/io/File;

    return-object v0
.end method
