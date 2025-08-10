.class final Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;
.super Ljava/lang/Object;
.source "InsnList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InsnListIterator"
.end annotation


# instance fields
.field next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

.field prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

.field remove:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

.field final synthetic this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;


# direct methods
.method constructor <init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;I)V
    .locals 1
    .param p2, "index"    # I

    .line 536
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 538
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 539
    invoke-virtual {p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->getLast()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    move-result-object p1

    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 541
    :cond_0
    invoke-virtual {p1, p2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->get(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    move-result-object p1

    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 542
    iget-object p1, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 544
    :goto_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 608
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_0

    .line 609
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    move-object v2, p1

    check-cast v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    invoke-virtual {v1, v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->insertBefore(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    goto :goto_0

    .line 610
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_1

    .line 611
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    move-object v2, p1

    check-cast v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    invoke-virtual {v1, v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->insert(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    goto :goto_0

    .line 613
    :cond_1
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    move-object v1, p1

    check-cast v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->add(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    .line 615
    :goto_0
    move-object v0, p1

    check-cast v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 616
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->remove:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 617
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 547
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 576
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 551
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 555
    .local v0, "result":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 556
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 557
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->remove:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 558
    return-object v0

    .line 552
    .end local v0    # "result":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 2

    .line 588
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    .line 589
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size()I

    move-result v0

    return v0

    .line 591
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_1

    .line 592
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->toArray()[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    move-result-object v1

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 594
    :cond_1
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->index:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .line 580
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 581
    .local v0, "result":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 582
    iget-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 583
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->remove:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 584
    return-object v0
.end method

.method public previousIndex()I
    .locals 2

    .line 598
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    .line 599
    const/4 v0, -0x1

    return v0

    .line 601
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_1

    .line 602
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->toArray()[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    move-result-object v1

    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 604
    :cond_1
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->index:I

    return v0
.end method

.method public remove()V
    .locals 2

    .line 562
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->remove:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_1

    .line 563
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    if-ne v0, v1, :cond_0

    .line 564
    iget-object v0, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 566
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 568
    :goto_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->remove:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->remove(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->remove:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 573
    return-void

    .line 571
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 620
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->remove:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_1

    .line 621
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    move-object v2, p1

    check-cast v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    invoke-virtual {v1, v0, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->set(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V

    .line 622
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->remove:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    if-ne v0, v1, :cond_0

    .line 623
    move-object v0, p1

    check-cast v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 625
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 630
    :goto_0
    return-void

    .line 628
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
