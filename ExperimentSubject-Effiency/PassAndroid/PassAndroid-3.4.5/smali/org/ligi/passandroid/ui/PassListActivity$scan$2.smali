.class final Lorg/ligi/passandroid/ui/PassListActivity$scan$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PassListActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassListActivity;->scan()V
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
        "Lkotlin/Unit;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $intent:Landroid/content/Intent;

.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassListActivity;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/PassListActivity;Landroid/content/Intent;)V
    .locals 1

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassListActivity$scan$2;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/PassListActivity$scan$2;->$intent:Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassListActivity$scan$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassListActivity$scan$2;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassListActivity$scan$2;->$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/ui/PassListActivity;->stopService(Landroid/content/Intent;)Z

    .line 98
    return-void
.end method
