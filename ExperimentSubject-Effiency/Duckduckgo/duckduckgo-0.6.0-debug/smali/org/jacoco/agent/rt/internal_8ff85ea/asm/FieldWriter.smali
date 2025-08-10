.class final Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;
.super Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;
.source "FieldWriter.java"


# instance fields
.field private final access:I

.field private anns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

.field private attrs:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

.field private final cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

.field private final desc:I

.field private ianns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

.field private itanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

.field private final name:I

.field private signature:I

.field private tanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

.field private value:I


# direct methods
.method constructor <init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "cw"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "signature"    # Ljava/lang/String;
    .param p6, "value"    # Ljava/lang/Object;

    .line 121
    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;-><init>(I)V

    .line 122
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->firstField:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;

    if-nez v0, :cond_0

    .line 123
    iput-object p0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->firstField:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->lastField:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;

    iput-object p0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->fv:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldVisitor;

    .line 127
    :goto_0
    iput-object p0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->lastField:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;

    .line 128
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    .line 129
    iput p2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->access:I

    .line 130
    invoke-virtual {p1, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->name:I

    .line 131
    invoke-virtual {p1, p4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->desc:I

    .line 132
    if-eqz p5, :cond_1

    .line 133
    invoke-virtual {p1, p5}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->signature:I

    .line 135
    :cond_1
    if-eqz p6, :cond_2

    .line 136
    invoke-virtual {p1, p6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newConstItem(Ljava/lang/Object;)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;

    move-result-object v0

    iget v0, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Item;->index:I

    iput v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->value:I

    .line 138
    :cond_2
    return-void
.end method


# virtual methods
.method getSize()I
    .locals 7

    .line 207
    const/16 v0, 0x8

    .line 208
    .local v0, "size":I
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->value:I

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v2, "ConstantValue"

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 210
    add-int/lit8 v0, v0, 0x8

    .line 212
    :cond_0
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->access:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_2

    .line 213
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget v1, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->version:I

    const v2, 0xffff

    and-int/2addr v1, v2

    const/16 v2, 0x31

    if-lt v1, v2, :cond_1

    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->access:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 215
    :cond_1
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v2, "Synthetic"

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 216
    add-int/lit8 v0, v0, 0x6

    .line 219
    :cond_2
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->access:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    .line 220
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v2, "Deprecated"

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 221
    add-int/lit8 v0, v0, 0x6

    .line 223
    :cond_3
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->signature:I

    if-eqz v1, :cond_4

    .line 224
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v2, "Signature"

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 225
    add-int/lit8 v0, v0, 0x8

    .line 227
    :cond_4
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->anns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v1, :cond_5

    .line 228
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 229
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->anns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 231
    :cond_5
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->ianns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v1, :cond_6

    .line 232
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 233
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->ianns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 235
    :cond_6
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->tanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v1, :cond_7

    .line 236
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v2, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 237
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->tanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 239
    :cond_7
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->itanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v1, :cond_8

    .line 240
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v2, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 241
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->itanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    invoke-virtual {v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 243
    :cond_8
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->attrs:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    if-eqz v1, :cond_9

    .line 244
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->getSize(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;[BIII)I

    move-result v1

    add-int/2addr v0, v1

    .line 246
    :cond_9
    return v0
.end method

.method put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V
    .locals 11
    .param p1, "out"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 256
    const/16 v0, 0x40

    .line 257
    .local v0, "FACTOR":I
    iget v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->access:I

    const/high16 v2, 0x40000

    and-int v3, v1, v2

    div-int/lit8 v3, v3, 0x40

    const/high16 v4, 0x60000

    or-int/2addr v3, v4

    .line 259
    .local v3, "mask":I
    not-int v4, v3

    and-int/2addr v1, v4

    invoke-virtual {p1, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    iget v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->name:I

    invoke-virtual {v1, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    iget v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->desc:I

    invoke-virtual {v1, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 260
    const/4 v1, 0x0

    .line 261
    .local v1, "attributeCount":I
    iget v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->value:I

    if-eqz v4, :cond_0

    .line 262
    add-int/lit8 v1, v1, 0x1

    .line 264
    :cond_0
    iget v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->access:I

    and-int/lit16 v4, v4, 0x1000

    const/16 v5, 0x31

    const v6, 0xffff

    if-eqz v4, :cond_2

    .line 265
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget v4, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->version:I

    and-int/2addr v4, v6

    if-lt v4, v5, :cond_1

    iget v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->access:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_2

    .line 267
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 270
    :cond_2
    iget v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->access:I

    const/high16 v7, 0x20000

    and-int/2addr v4, v7

    if-eqz v4, :cond_3

    .line 271
    add-int/lit8 v1, v1, 0x1

    .line 273
    :cond_3
    iget v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->signature:I

    if-eqz v4, :cond_4

    .line 274
    add-int/lit8 v1, v1, 0x1

    .line 276
    :cond_4
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->anns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v4, :cond_5

    .line 277
    add-int/lit8 v1, v1, 0x1

    .line 279
    :cond_5
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->ianns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v4, :cond_6

    .line 280
    add-int/lit8 v1, v1, 0x1

    .line 282
    :cond_6
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->tanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v4, :cond_7

    .line 283
    add-int/lit8 v1, v1, 0x1

    .line 285
    :cond_7
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->itanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v4, :cond_8

    .line 286
    add-int/lit8 v1, v1, 0x1

    .line 288
    :cond_8
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->attrs:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    if-eqz v4, :cond_9

    .line 289
    invoke-virtual {v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->getCount()I

    move-result v4

    add-int/2addr v1, v4

    .line 291
    :cond_9
    invoke-virtual {p1, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 292
    iget v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->value:I

    const/4 v8, 0x2

    if-eqz v4, :cond_a

    .line 293
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v9, "ConstantValue"

    invoke-virtual {v4, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 294
    invoke-virtual {p1, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v4

    iget v9, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->value:I

    invoke-virtual {v4, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 296
    :cond_a
    iget v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->access:I

    and-int/lit16 v4, v4, 0x1000

    const/4 v9, 0x0

    if-eqz v4, :cond_c

    .line 297
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget v4, v4, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->version:I

    and-int/2addr v4, v6

    if-lt v4, v5, :cond_b

    iget v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->access:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_c

    .line 299
    :cond_b
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v4, "Synthetic"

    invoke-virtual {v2, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 302
    :cond_c
    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->access:I

    and-int/2addr v2, v7

    if-eqz v2, :cond_d

    .line 303
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v4, "Deprecated"

    invoke-virtual {v2, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v9}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 305
    :cond_d
    iget v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->signature:I

    if-eqz v2, :cond_e

    .line 306
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v4, "Signature"

    invoke-virtual {v2, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 307
    invoke-virtual {p1, v8}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putInt(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v2

    iget v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->signature:I

    invoke-virtual {v2, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 309
    :cond_e
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->anns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v2, :cond_f

    .line 310
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v4, "RuntimeVisibleAnnotations"

    invoke-virtual {v2, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 311
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->anns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    invoke-virtual {v2, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    .line 313
    :cond_f
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->ianns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v2, :cond_10

    .line 314
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v4, "RuntimeInvisibleAnnotations"

    invoke-virtual {v2, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 315
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->ianns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    invoke-virtual {v2, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    .line 317
    :cond_10
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->tanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v2, :cond_11

    .line 318
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v4, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v2, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 319
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->tanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    invoke-virtual {v2, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    .line 321
    :cond_11
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->itanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    if-eqz v2, :cond_12

    .line 322
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const-string v4, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v2, v4}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 323
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->itanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    invoke-virtual {v2, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    .line 325
    :cond_12
    iget-object v4, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->attrs:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    if-eqz v4, :cond_13

    .line 326
    iget-object v5, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v10, p1

    invoke-virtual/range {v4 .. v10}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->put(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;[BIIILorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    .line 328
    :cond_13
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    .locals 8
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 150
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;-><init>()V

    .line 152
    .local v0, "bv":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 153
    new-instance v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    const/4 v3, 0x1

    const/4 v6, 0x2

    move-object v1, v7

    move-object v4, v0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;ZLorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;I)V

    .line 154
    .local v1, "aw":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;
    if-eqz p2, :cond_0

    .line 155
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->anns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 156
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->anns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    goto :goto_0

    .line 158
    :cond_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->ianns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 159
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->ianns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 161
    :goto_0
    return-object v1
.end method

.method public visitAttribute(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 189
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->attrs:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    iput-object v0, p1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 190
    iput-object p1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->attrs:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/Attribute;

    .line 191
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 195
    return-void
.end method

.method public visitTypeAnnotation(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Ljava/lang/String;Z)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationVisitor;
    .locals 8
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 170
    new-instance v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    invoke-direct {v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;-><init>()V

    .line 172
    .local v0, "bv":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;
    invoke-static {p1, p2, v0}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->putTarget(ILorg/jacoco/agent/rt/internal_8ff85ea/asm/TypePath;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;)V

    .line 174
    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    invoke-virtual {v1, p3}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->putShort(I)Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;

    .line 175
    new-instance v7, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->cw:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;

    iget v1, v0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;->length:I

    add-int/lit8 v6, v1, -0x2

    const/4 v3, 0x1

    move-object v1, v7

    move-object v4, v0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;-><init>(Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ClassWriter;ZLorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;Lorg/jacoco/agent/rt/internal_8ff85ea/asm/ByteVector;I)V

    .line 177
    .local v1, "aw":Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;
    if-eqz p4, :cond_0

    .line 178
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->tanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 179
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->tanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    goto :goto_0

    .line 181
    :cond_0
    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->itanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    iput-object v2, v1, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;->next:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 182
    iput-object v1, p0, Lorg/jacoco/agent/rt/internal_8ff85ea/asm/FieldWriter;->itanns:Lorg/jacoco/agent/rt/internal_8ff85ea/asm/AnnotationWriter;

    .line 184
    :goto_0
    return-object v1
.end method
