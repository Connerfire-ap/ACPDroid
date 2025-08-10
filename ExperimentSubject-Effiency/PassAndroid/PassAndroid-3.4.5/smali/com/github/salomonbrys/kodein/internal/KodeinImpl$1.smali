.class final Lcom/github/salomonbrys/kodein/internal/KodeinImpl$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KodeinImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/salomonbrys/kodein/internal/KodeinImpl;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Builder;Z)V
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
        0x1
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
        0x6
    }
.end annotation


# instance fields
.field final synthetic $init:Lkotlin/jvm/functions/Function0;

.field final synthetic $lock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/github/salomonbrys/kodein/internal/KodeinImpl;


# direct methods
.method constructor <init>(Lcom/github/salomonbrys/kodein/internal/KodeinImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$1;->this$0:Lcom/github/salomonbrys/kodein/internal/KodeinImpl;

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$1;->$lock:Ljava/lang/Object;

    iput-object p3, p0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$1;->$init:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    .prologue
    .line 37
    iget-object v4, p0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$1;->$lock:Ljava/lang/Object;

    iget-object v3, p0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$1;->this$0:Lcom/github/salomonbrys/kodein/internal/KodeinImpl;

    # getter for: Lcom/github/salomonbrys/kodein/internal/KodeinImpl;->_init:Lkotlin/jvm/functions/Function0;
    invoke-static {v3}, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;->access$get_init$p(Lcom/github/salomonbrys/kodein/internal/KodeinImpl;)Lkotlin/jvm/functions/Function0;

    move-result-object v5

    if-nez v5, :cond_1

    .line 72
    nop

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    monitor-enter v4

    nop

    .line 37
    :try_start_0
    # getter for: Lcom/github/salomonbrys/kodein/internal/KodeinImpl;->_init:Lkotlin/jvm/functions/Function0;
    invoke-static {v3}, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;->access$get_init$p(Lcom/github/salomonbrys/kodein/internal/KodeinImpl;)Lkotlin/jvm/functions/Function0;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 79
    .local v1, "value$iv":Lkotlin/jvm/functions/Function0;
    move-object v0, v1

    .line 38
    .local v0, "it":Lkotlin/jvm/functions/Function0;
    iget-object v5, p0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$1;->this$0:Lcom/github/salomonbrys/kodein/internal/KodeinImpl;

    const/4 v3, 0x0

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v5, v3}, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;->access$set_init$p(Lcom/github/salomonbrys/kodein/internal/KodeinImpl;Lkotlin/jvm/functions/Function0;)V

    .line 39
    iget-object v3, p0, Lcom/github/salomonbrys/kodein/internal/KodeinImpl$1;->$init:Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    nop

    .line 80
    const/4 v2, 0x0

    .line 76
    .end local v0    # "it":Lkotlin/jvm/functions/Function0;
    .end local v1    # "value$iv":Lkotlin/jvm/functions/Function0;
    :goto_1
    monitor-exit v4

    .line 83
    .local v2, "wasNull$iv":Z
    if-eqz v2, :cond_0

    .line 84
    nop

    .line 37
    goto :goto_0

    .end local v2    # "wasNull$iv":Z
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 76
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
