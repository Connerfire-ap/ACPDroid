.class final Lorg/ligi/passandroid/model/AndroidFileSystemPassStore$classifier$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidFileSystemPassStore.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;-><init>(Landroid/content/Context;Lorg/ligi/passandroid/model/Settings;Lcom/squareup/moshi/Moshi;Lorg/greenrobot/eventbus/EventBus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0",
        "<",
        "Lorg/ligi/passandroid/model/FileBackedPassClassifier;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lorg/ligi/passandroid/model/FileBackedPassClassifier;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $settings:Lorg/ligi/passandroid/model/Settings;

.field final synthetic this$0:Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;Lorg/ligi/passandroid/model/Settings;)V
    .locals 1

    iput-object p1, p0, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore$classifier$2;->this$0:Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;

    iput-object p2, p0, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore$classifier$2;->$settings:Lorg/ligi/passandroid/model/Settings;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore$classifier$2;->invoke()Lorg/ligi/passandroid/model/FileBackedPassClassifier;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/ligi/passandroid/model/FileBackedPassClassifier;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 26
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore$classifier$2;->$settings:Lorg/ligi/passandroid/model/Settings;

    invoke-interface {v1}, Lorg/ligi/passandroid/model/Settings;->getStateDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "classifier_state.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    .local v0, "classificationFile":Ljava/io/File;
    new-instance v2, Lorg/ligi/passandroid/model/FileBackedPassClassifier;

    iget-object v1, p0, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore$classifier$2;->this$0:Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;

    check-cast v1, Lorg/ligi/passandroid/model/PassStore;

    iget-object v3, p0, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore$classifier$2;->this$0:Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;

    # getter for: Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->moshi:Lcom/squareup/moshi/Moshi;
    invoke-static {v3}, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->access$getMoshi$p(Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;)Lcom/squareup/moshi/Moshi;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lorg/ligi/passandroid/model/FileBackedPassClassifier;-><init>(Ljava/io/File;Lorg/ligi/passandroid/model/PassStore;Lcom/squareup/moshi/Moshi;)V

    return-object v2
.end method
