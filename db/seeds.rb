PaperType.create!([
  {name: 'blank_on_one_side', size: 'A4'},
  {name: 'semi_blank', size: 'A4'},
  {name: 'reject', size: 'A4'},
  {name: 'blank_on_one_side', size: 'A3'},
  {name: 'semi_blank', size: 'A3'},
  {name: 'reject', size: 'A3'}
])

book = Book.create!(binding: 'stapled')

book.pages.create!([
  {quantity: '3', paper_type: PaperType.find_by(name: 'blank_on_one_side' , size: 'A4')},
  {quantity: '10', paper_type: PaperType.find_by(name: 'semi_blank', size: 'A4')}
])
