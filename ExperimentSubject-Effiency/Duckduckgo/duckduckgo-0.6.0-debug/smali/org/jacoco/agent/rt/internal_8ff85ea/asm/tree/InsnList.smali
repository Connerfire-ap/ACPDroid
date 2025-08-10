.class public Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;
.super Ljava/lang/Object;
.source "InsnList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;
    }
.end annotation


# instance fields
.field cache:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

.field private first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

.field private last:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V
    .locals 1
    .param p1, "mv"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;

    .line 160
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 161
    .local v0, "insn":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    :goto_0
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->accept(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/MethodVisitor;)V

    .line 163
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 165
    :cond_0
    return-void
.end method

.method public add(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V
    .locals 1
    .param p1, "insn"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 250
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size:I

    .line 251
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    .line 252
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 253
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 255
    :cond_0
    iput-object p1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 256
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    iput-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 258
    :goto_0
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 260
    const/4 v0, 0x0

    iput v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->index:I

    .line 261
    return-void
.end method

.method public add(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;)V
    .locals 2
    .param p1, "insns"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    .line 271
    iget v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size:I

    if-nez v0, :cond_0

    .line 272
    return-void

    .line 274
    :cond_0
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size:I

    .line 275
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_1

    .line 276
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 277
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 279
    :cond_1
    iget-object v1, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 280
    .local v1, "elem":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 281
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 282
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 284
    .end local v1    # "elem":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 285
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->removeAll(Z)V

    .line 286
    return-void
.end method

.method public clear()V
    .locals 1

    .line 508
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->removeAll(Z)V

    .line 509
    return-void
.end method

.method public contains(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)Z
    .locals 2
    .param p1, "insn"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 125
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 126
    .local v0, "i":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 127
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 129
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public get(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    .locals 1
    .param p1, "index"    # I

    .line 106
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size:I

    if-ge p1, v0, :cond_1

    .line 109
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->toArray()[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    aget-object v0, v0, p1

    return-object v0

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getFirst()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    return-object v0
.end method

.method public getLast()Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    return-object v0
.end method

.method public indexOf(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)I
    .locals 1
    .param p1, "insn"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 147
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->toArray()[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 150
    :cond_0
    iget v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->index:I

    return v0
.end method

.method public insert(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V
    .locals 1
    .param p1, "insn"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 296
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size:I

    .line 297
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    .line 298
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 299
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 301
    :cond_0
    iput-object p1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 302
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    iput-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 304
    :goto_0
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 306
    const/4 v0, 0x0

    iput v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->index:I

    .line 307
    return-void
.end method

.method public insert(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V
    .locals 2
    .param p1, "location"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    .param p2, "insn"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 346
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size:I

    .line 347
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 348
    .local v0, "next":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    if-nez v0, :cond_0

    .line 349
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 351
    :cond_0
    iput-object p2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 353
    :goto_0
    iput-object p2, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 354
    iput-object v0, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 355
    iput-object p1, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 356
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 357
    const/4 v1, 0x0

    iput v1, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->index:I

    .line 358
    return-void
.end method

.method public insert(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;)V
    .locals 4
    .param p1, "location"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    .param p2, "insns"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    .line 371
    iget v0, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size:I

    if-nez v0, :cond_0

    .line 372
    return-void

    .line 374
    :cond_0
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size:I

    .line 375
    iget-object v0, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 376
    .local v0, "ifirst":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    iget-object v1, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 377
    .local v1, "ilast":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    iget-object v2, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 378
    .local v2, "next":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    if-nez v2, :cond_1

    .line 379
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 381
    :cond_1
    iput-object v1, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 383
    :goto_0
    iput-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 384
    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 385
    iput-object p1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 386
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 387
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->removeAll(Z)V

    .line 388
    return-void
.end method

.method public insert(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;)V
    .locals 2
    .param p1, "insns"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    .line 317
    iget v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size:I

    if-nez v0, :cond_0

    .line 318
    return-void

    .line 320
    :cond_0
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size:I

    .line 321
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_1

    .line 322
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 323
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 325
    :cond_1
    iget-object v1, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 326
    .local v1, "elem":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 327
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 328
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 330
    .end local v1    # "elem":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 331
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->removeAll(Z)V

    .line 332
    return-void
.end method

.method public insertBefore(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V
    .locals 2
    .param p1, "location"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    .param p2, "insn"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 402
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size:I

    .line 403
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 404
    .local v0, "prev":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    if-nez v0, :cond_0

    .line 405
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 407
    :cond_0
    iput-object p2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 409
    :goto_0
    iput-object p2, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 410
    iput-object p1, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 411
    iput-object v0, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 412
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 413
    const/4 v1, 0x0

    iput v1, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->index:I

    .line 414
    return-void
.end method

.method public insertBefore(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;)V
    .locals 4
    .param p1, "location"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    .param p2, "insns"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;

    .line 428
    iget v0, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size:I

    if-nez v0, :cond_0

    .line 429
    return-void

    .line 431
    :cond_0
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size:I

    .line 432
    iget-object v0, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 433
    .local v0, "ifirst":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    iget-object v1, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 434
    .local v1, "ilast":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    iget-object v2, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 435
    .local v2, "prev":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    if-nez v2, :cond_1

    .line 436
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 438
    :cond_1
    iput-object v0, v2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 440
    :goto_0
    iput-object v1, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 441
    iput-object p1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 442
    iput-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 443
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 444
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->removeAll(Z)V

    .line 445
    return-void
.end method

.method public iterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;",
            ">;"
        }
    .end annotation

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->iterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;",
            ">;"
        }
    .end annotation

    .line 186
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;

    invoke-direct {v0, p0, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList$InsnListIterator;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;I)V

    return-object v0
.end method

.method public remove(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V
    .locals 4
    .param p1, "insn"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 454
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size:I

    .line 455
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 456
    .local v0, "next":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    iget-object v1, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 457
    .local v1, "prev":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 458
    if-nez v1, :cond_0

    .line 459
    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 460
    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 462
    :cond_0
    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 463
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 466
    :cond_1
    if-nez v1, :cond_2

    .line 467
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 468
    iput-object v2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 470
    :cond_2
    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 471
    iput-object v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 474
    :goto_0
    iput-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 475
    const/4 v3, -0x1

    iput v3, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->index:I

    .line 476
    iput-object v2, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 477
    iput-object v2, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 478
    return-void
.end method

.method removeAll(Z)V
    .locals 4
    .param p1, "mark"    # Z

    .line 488
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 489
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 490
    .local v1, "insn":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    :goto_0
    if-eqz v1, :cond_0

    .line 491
    iget-object v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 492
    .local v2, "next":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    const/4 v3, -0x1

    iput v3, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->index:I

    .line 493
    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 494
    iput-object v0, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 495
    move-object v1, v2

    .line 496
    .end local v2    # "next":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    goto :goto_0

    .line 498
    .end local v1    # "insn":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size:I

    .line 499
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 500
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 501
    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 502
    return-void
.end method

.method public resetLabels()V
    .locals 2

    .line 517
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 518
    .local v0, "insn":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    :goto_0
    if-eqz v0, :cond_1

    .line 519
    instance-of v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    if-eqz v1, :cond_0

    .line 520
    move-object v1, v0

    check-cast v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/LabelNode;->resetLabel()V

    .line 522
    :cond_0
    iget-object v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 524
    :cond_1
    return-void
.end method

.method public set(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;)V
    .locals 4
    .param p1, "location"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    .param p2, "insn"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 216
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 217
    .local v0, "next":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    iput-object v0, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 218
    if-eqz v0, :cond_0

    .line 219
    iput-object p2, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 221
    :cond_0
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->last:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 223
    :goto_0
    iget-object v1, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 224
    .local v1, "prev":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    iput-object v1, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 225
    if-eqz v1, :cond_1

    .line 226
    iput-object p2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    goto :goto_1

    .line 228
    :cond_1
    iput-object p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 230
    :goto_1
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    if-eqz v2, :cond_2

    .line 231
    iget v2, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->index:I

    .line 232
    .local v2, "index":I
    iget-object v3, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->cache:[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    aput-object p2, v3, v2

    .line 233
    iput v2, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->index:I

    .line 234
    .end local v2    # "index":I
    goto :goto_2

    .line 235
    :cond_2
    const/4 v2, 0x0

    iput v2, p2, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->index:I

    .line 237
    :goto_2
    const/4 v2, -0x1

    iput v2, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->index:I

    .line 238
    const/4 v2, 0x0

    iput-object v2, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->prev:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 239
    iput-object v2, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 240
    return-void
.end method

.method public size()I
    .locals 1

    .line 70
    iget v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size:I

    return v0
.end method

.method public toArray()[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    .locals 4

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "i":I
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->first:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 197
    .local v1, "elem":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/InsnList;->size:I

    new-array v2, v2, [Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    .line 198
    .local v2, "insns":[Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;
    :goto_0
    if-eqz v1, :cond_0

    .line 199
    aput-object v1, v2, v0

    .line 200
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    iput v0, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->index:I

    .line 201
    iget-object v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/tree/AbstractInsnNode;

    move v0, v3

    goto :goto_0

    .line 203
    .end local v3    # "i":I
    .restart local v0    # "i":I
    :cond_0
    return-object v2
.end method
