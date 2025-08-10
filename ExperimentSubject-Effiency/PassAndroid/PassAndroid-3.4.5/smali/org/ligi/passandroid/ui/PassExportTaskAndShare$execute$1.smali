.class final Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;
.super Ljava/lang/Object;
.source "PassExportTaskAndShare.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassExportTaskAndShare;->execute()V
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
.field final synthetic $file:Ljava/io/File;

.field final synthetic $handler:Landroid/os/Handler;

.field final synthetic $passExporter:Lorg/ligi/passandroid/ui/PassExporter;

.field final synthetic $progress_dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassExportTaskAndShare;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/PassExportTaskAndShare;Lorg/ligi/passandroid/ui/PassExporter;Landroid/os/Handler;Landroid/app/ProgressDialog;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;->this$0:Lorg/ligi/passandroid/ui/PassExportTaskAndShare;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;->$passExporter:Lorg/ligi/passandroid/ui/PassExporter;

    iput-object p3, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;->$handler:Landroid/os/Handler;

    iput-object p4, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;->$progress_dialog:Landroid/app/ProgressDialog;

    iput-object p5, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;->$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;->$passExporter:Lorg/ligi/passandroid/ui/PassExporter;

    invoke-virtual {v0}, Lorg/ligi/passandroid/ui/PassExporter;->export()V

    .line 28
    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;->$handler:Landroid/os/Handler;

    new-instance v0, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1$1;

    invoke-direct {v0, p0}, Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1$1;-><init>(Lorg/ligi/passandroid/ui/PassExportTaskAndShare$execute$1;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    return-void
.end method
